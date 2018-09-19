package com.iyunhe.common;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

/**
 * @author Administrator
 * 文件上传
 */
public class FileUpload {

	public static String fileUpload(MultipartFile file,String path) throws IllegalStateException, IOException{
		String result = null;
		if (file!=null&&!file.isEmpty()) {
			//获取当前项目的根目录+upload目录
			String fileOldName = file.getOriginalFilename();
			String fileNewName = generatorFileName(fileOldName);
			File newfile = new File(path,fileNewName);
			if (!newfile.getParentFile().exists()) {
				newfile.getParentFile().mkdirs();
			}
			file.transferTo(newfile);
			result = fileNewName;
		}
		return result;
		
	}

	public static String fileUpload(MultipartFile file,HttpServletRequest request) throws IllegalStateException, IOException{
		String result = null;
		if (file!=null&&!file.isEmpty()) {
			//获取当前项目的根目录+upload目录
			String path = request.getServletContext().getRealPath("/upload");
			result = fileUpload(file, path);
		}
		return result;
	}
	//使用时间戳，生成一个文件名（1532321321312321.xxx），这个fileName就相当于是要存到数据库中的头像
	private static String generatorFileName(String oldName){		//传入原来的图片名称
		//生成一个随机数
		String rand=Math.random()+"";
		String randStr=rand.substring(rand.lastIndexOf(".")+1);
		
		return System.currentTimeMillis()+randStr+ oldName.substring(oldName.lastIndexOf("."));  //新文件名称
	}

}
