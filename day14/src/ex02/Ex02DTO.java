package ex02;

import java.io.File;

public class Ex02DTO {
	
	private File uploadFile;
	private String name;	
	private String fileName; 	// 이후 DB에 저장하기 위한 용도로 만들기
	
	public File getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(File uploadFile) {
		this.uploadFile = uploadFile;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
}
