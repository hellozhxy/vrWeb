package com.vr.utils;

import java.io.UnsupportedEncodingException;
import java.util.concurrent.TimeUnit;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.lang.StringUtils;

public class CodecUtils {
	
	private static Base64 base64 = new Base64();
	
	public static void main(String[] args) {
		
		for(int i=0;i<10;i++){
			new Thread(new Runnable() {
				
				@Override
				public void run() {
					for(int i=0;i<1000;i++){
						String s = "12888";
						String encode = encode(s);
						System.out.println(Thread.currentThread().getName());
						System.out.println(encode);
						System.out.println(decode(encode));
						try {
							TimeUnit.MICROSECONDS.sleep(2);
						} catch (InterruptedException e) {
							e.printStackTrace();
						}
					}
				}
			}).start();
		}
	}
	
	public static String encode(String source){
		
		if(StringUtils.isBlank(source)){
			return null;
		}
		try {
			return new String(base64.encode(source.getBytes()), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			return null;
		}
	}
	
	public static String decode(String codecString){
		if(StringUtils.isBlank(codecString)){
			return null;
		}
		try {
			return new String(base64.decode(codecString.getBytes()),"UTF-8");
		} catch (UnsupportedEncodingException e) {
			return null;
		}
	}
	
	public static Long decodeToLong(String codecString){
		if(StringUtils.isBlank(codecString)){
			return null;
		}
		String de;
		try {
			de = new String(base64.decode(codecString.getBytes()),"UTF-8");
		} catch (UnsupportedEncodingException e) {
			de = null;
		}
		if(de == null){
			return null;
		}
		return Long.valueOf(de);
	}

}
