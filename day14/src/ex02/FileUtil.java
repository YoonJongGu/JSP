package ex02;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

public class FileUtil {
	
	private String saveDirectory;	// application,getRealPath("upload")
	private int maxPostSize = 1024 * 1024 * 50; // 50MB
	private final String encoding = "UTF-8";
	private FileRenamePolicy namePolicy = new DefaultFileRenamePolicy();
	
	// 파일을 업로드하고, 그 정보를 dto 형식으로 반환하는 함수
	public Ex02DTO getDTO(HttpServletRequest request) throws IOException {
		Ex02DTO dto = null;
		
		if(saveDirectory == null) {
			saveDirectory = request.getSession().getServletContext().getRealPath("upload");
		}
		File dir = new File(saveDirectory);
		if(dir.exists() == false) {
			dir.mkdirs();
		}
		
		// 1) 파일을 지정한 위치에 업로드 한다 (=MultipartRequest 객체 생성)
		MultipartRequest mpRequest = new MultipartRequest(
				request,
				saveDirectory,
				maxPostSize,
				encoding,
				namePolicy
			);
		
		// 2) 업로드받은 파일의 정보를 dto에 모두 넣어주고 반환한다
		dto = new Ex02DTO();		
		dto.setFileName(mpRequest.getOriginalFileName("uploadFile"));
		dto.setName(mpRequest.getParameter("name"));
		dto.setUploadFile(mpRequest.getFile("uploadFile"));
		
		return dto;
	}

	// 저장된 디렉토리 내부의 파일 이름을 문자열 배열로 반환하는 함수
	public String[] getList() {
		if(saveDirectory == null) {
			return null;
		}
		File dir = new File(saveDirectory);
		String[] list = dir.list();	// 디렉토리 내부의 파일들의 이름을 문자열 배열로 저장
		return list;
	}
}
