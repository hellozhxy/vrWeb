package com.vr.web.servlet;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vr.utils.UploadUtils;

/**
 * Description:upload resource 
 * All Rights Reserved.
 * @version 1.0 2016年8月24日 下午5:18:04 by 代鹏（daipeng.456@gmail.com）创建
 */
public class UploadServlet extends HttpServlet {

	private static final long serialVersionUID = 320329561881008208L;

	public static final String UPLOAD_DIR = "D:\\upload";

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int resumableChunkNumber = getResumableChunkNumber(request);

		ResumableInfo info = getResumableInfo(request);

		RandomAccessFile raf = new RandomAccessFile(info.resumableFilePath, "rw");

		// Seek to position
		raf.seek((resumableChunkNumber - 1) * (long) info.resumableChunkSize);

		// Save to file
		InputStream is = request.getInputStream();
		long readed = 0;
		long content_length = request.getContentLength();
		byte[] bytes = new byte[1024 * 100];
		while (readed < content_length) {
			int r = is.read(bytes);
			if (r < 0) {
				break;
			}
			raf.write(bytes, 0, r);
			readed += r;
		}
		raf.close();

		// Mark as uploaded.
		info.uploadedChunks.add(new ResumableInfo.ResumableChunkNumber(resumableChunkNumber));
		if (info.checkIfUploadFinished()) { // Check if all chunks uploaded, and change filename
			ResumableInfoStorage.getInstance().remove(info);
			response.getWriter().print("All finished.");
		} else {
			response.getWriter().print("Upload");
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int resumableChunkNumber = getResumableChunkNumber(request);

		ResumableInfo info = getResumableInfo(request);

		if (info.uploadedChunks.contains(new ResumableInfo.ResumableChunkNumber(resumableChunkNumber))) {
			response.getWriter().print("Uploaded."); // This Chunk has been Uploaded.
		} else {
			response.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
		}
	}

	private int getResumableChunkNumber(HttpServletRequest request) {
		return UploadUtils.toInt(request.getParameter("resumableChunkNumber"), -1);
	}

	private ResumableInfo getResumableInfo(HttpServletRequest request)throws ServletException, UnsupportedEncodingException {
		String base_dir = UPLOAD_DIR;
		int resumableChunkSize = UploadUtils.toInt(request.getParameter("resumableChunkSize"), -1);
		long resumableTotalSize = UploadUtils.toLong(request.getParameter("resumableTotalSize"), -1);
		String resumableIdentifier = request.getParameter("resumableIdentifier");
		String resumableFilename = request.getParameter("resumableFilename");
		// String(request.getParameter("resumableFilename").getBytes("ISO8859-1"),"UTF-8");
		String resumableRelativePath = request.getParameter("resumableRelativePath");
		// Here we add a ".temp" to every upload file to indicate NON-FINISHED
		new File(base_dir).mkdir();
		String resumableFilePath = new File(base_dir, resumableFilename).getAbsolutePath() + ".temp";

		ResumableInfoStorage storage = ResumableInfoStorage.getInstance();

		ResumableInfo info = storage.get(resumableChunkSize, resumableTotalSize, resumableIdentifier, resumableFilename,
				resumableRelativePath, resumableFilePath);
		if (!info.vaild()) {
			storage.remove(info);
			throw new ServletException("Invalid request params.");
		}
		return info;
	}
}
