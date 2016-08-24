package com.vr.utils;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class ConfigUtil {
	
	@Value("${upload.resource.dir}")
	private String uploadResourceDir;

	public String getUploadResourceDir() {
		return uploadResourceDir;
	}
	
}
