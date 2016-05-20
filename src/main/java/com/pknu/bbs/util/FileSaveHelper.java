package com.pknu.bbs.util;

import java.io.File;
import java.util.UUID;

import javax.inject.Named;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;


@Named
public class FileSaveHelper {
	@Autowired
	String saveDir;
	public String save(MultipartFile fname){
		
		
		String storedFname = UUID.randomUUID().toString()+"_"+fname.getOriginalFilename();
		try {
			fname.transferTo(new File(saveDir+storedFname));
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		
//		File file = new File(saveDir+storedFname);
//		InputStream is = fname.getInputStream();
//		FileOutputStream os = null;
//		os = new FileOutputStream(file);
//		int temp = -1;
//		while((temp = is.read()) != -1){
//			os.write(temp);
//		}
//		is.close();
//		os.close();
		return storedFname;
	}

}
