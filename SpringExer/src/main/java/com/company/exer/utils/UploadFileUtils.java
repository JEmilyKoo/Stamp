package com.company.exer.utils;

import java.awt.image.BufferedImage;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.springframework.util.FileCopyUtils;


/*
public class UploadFileUtils {
	static final int THUMB_WIDTH = 300;
	 static final int THUMB_HEIGHT = 300;
	 
	 public static String fileUpload(String uploadPath,
	         String fileName,
	         byte[] fileData, String ymdPath) throws Exception {

	  UUID uid = UUID.randomUUID();
	  
	  String newFileName = uid + "_" + fileName;
	  String imgPath = uploadPath + ymdPath;

	  File target = new File(imgPath, newFileName);
	  FileCopyUtils.copy(fileData, target);
	  
	  String thumbFileName = "s_" + newFileName;
	  File image = new File(imgPath + File.separator + newFileName);

	  File thumbnail = new File(imgPath + File.separator + "s" + File.separator + thumbFileName);

	  if (image.exists()) {
	   thumbnail.getParentFile().mkdirs();
	   Thumbnails.of(image).size(THUMB_WIDTH, THUMB_HEIGHT).toFile(thumbnail);
	  }
	  return newFileName;
	 }

	 public static String calcPath(String uploadPath) {
	  Calendar cal = Calendar.getInstance();
	  String yearPath = File.separator + cal.get(Calendar.YEAR);
	  String monthPath = yearPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
	  String datePath = monthPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.DATE));

	  makeDir(uploadPath, yearPath, monthPath, datePath);
	  makeDir(uploadPath, yearPath, monthPath, datePath + "\\s");

	  return datePath;
	 }

	 private static void makeDir(String uploadPath, String... paths) {

	  if (new File(paths[paths.length - 1]).exists()) { return; }

	  for (String path : paths) {
	   File dirPath = new File(uploadPath + path);

	   if (!dirPath.exists()) {
	    dirPath.mkdir();
	   }
	  }
	 }
*/
public class UploadFileUtils {
	//static final int THUMB_WIDTH = 300;
	//static final int THUMB_HEIGHT = 300;
/*
	public static String fileUpload(String uploadPath, String fileName, byte[] fileData, String ymdPath)
			throws Exception {

		UUID uid = UUID.randomUUID();

		String newFileName = uid + "_" + fileName;
		String imgPath = uploadPath + ymdPath;

		File target = new File(imgPath, newFileName);
		FileCopyUtils.copy(fileData, target);

		String thumbFileName = "s_" + newFileName;
		File image = new File(imgPath + File.separator + newFileName);

		File thumbnail = new File(imgPath + File.separator + "s" + File.separator + thumbFileName);

		if (image.exists()) {
			thumbnail.getParentFile().mkdirs();
			Thumbnails.of(image).size(THUMB_WIDTH, THUMB_HEIGHT).toFile(thumbnail);
		}
		return newFileName;
	}
*/
	public static String uploadFile(String uploadPath, String originalName, byte[] fileData) throws Exception {
		// UUID
		UUID uuid = UUID.randomUUID();
		//
		String savedName = uuid.toString() + "_" + originalName;
		//
		String savedPath = calcPath(uploadPath);
		//
		File target = new File(uploadPath + savedPath, savedName);
		//
		FileCopyUtils.copy(fileData, target);
		//
		String formatName = originalName.substring(originalName.lastIndexOf(".") + 1);
		String uploadedFileName = null;
		//
		if (MediaUtils.getMediaType(formatName) != null) {
			// 썸네일
			uploadedFileName = makeThumbnail(uploadPath, savedPath, savedName);

			//
		} else {
			//
			uploadedFileName = makeIcon(uploadPath, savedPath, savedName);

		}

		return uploadedFileName;
	
	}

	private static String calcPath(String uploadPath) {
		Calendar cal = Calendar.getInstance();
		//
		//
		String yearPath = File.separator + cal.get(Calendar.YEAR);
		System.out.println(yearPath);

		//
		String monthPath = yearPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.MONDAY) + 1);
		System.out.println(monthPath);
		String datePath = monthPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.DATE));
		System.out.println(datePath);

		makeDir(uploadPath, yearPath, monthPath, datePath);
		return datePath;

	}

	private static void makeDir(String uploadPath, String... paths) {

		if (new File(paths[paths.length - 1]).exists()) {
			return;
		}

		for (String path : paths) {
			File dirPath = new File(uploadPath + path);

			if (!dirPath.exists()) {
				dirPath.mkdir();
			}
		}
	}

	private static String makeThumbnail(String uploadPath, String path, String fileName) throws Exception{
		//
		BufferedImage sourceImg = ImageIO.read(new File(uploadPath + path, fileName));
		//
		BufferedImage destImg = Scalr.resize(sourceImg,  Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 100);
		//
		String thumbnailName = uploadPath + path + File.separator + "s_" + fileName;
		File newFile = new File(thumbnailName);
		String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
		//
		ImageIO.write(destImg, formatName.toUpperCase(), newFile);
		//
		return thumbnailName.substring(uploadPath.length()).replace(File.separatorChar,'/');
		
	}
	
	//아이콘 생성
	private static String makeIcon(String uploadPath, String path, String fileName) throws Exception{
		//
		String iconName = uploadPath + path + File.separator + fileName;
		//
		return iconName.substring(uploadPath.length()).replace(File.separatorChar, '/');
	}
	
}
