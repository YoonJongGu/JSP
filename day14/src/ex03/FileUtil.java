package ex03;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

public class FileUtil {
	
	private static String saveDirectory;
	private static int maxPostSize = 1024 * 1024 * 20;
	private static String encoding = "UTF-8";
	private static FileRenamePolicy namePolicy = new DefaultFileRenamePolicy();
	
	public static Ex03DTO getDTO(HttpServletRequest request) throws IOException, ParseException {
		Ex03DTO dto = null;
		
//		saveDirectory = request.getServletContext().getRealPath("upload");
		saveDirectory = "D:\\upload";
		
		File dir = new File(saveDirectory);
		if(dir.exists() == false) {
			dir.mkdirs();
		}		
		
		MultipartRequest mpRequest = 
				new MultipartRequest(request, saveDirectory, maxPostSize, encoding, namePolicy);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date d1 = sdf.parse(mpRequest.getParameter("birthDate"));
		java.sql.Date d2 = new java.sql.Date(d1.getTime());
		
		dto = new Ex03DTO();
		dto.setName(mpRequest.getParameter("name"));
		dto.setBirthDate(d2);
//		dto.setImgPath(mpRequest.getOriginalFileName("uploadFile"));
		dto.setImgPath(mpRequest.getFile("uploadFile").getName());
		dto.setUploadFile(mpRequest.getFile("uploadFile"));
		
		return dto;
	}
}
