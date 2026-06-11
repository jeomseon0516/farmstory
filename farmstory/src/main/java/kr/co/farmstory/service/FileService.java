package kr.co.farmstory.service;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;
import kr.co.farmstory.dao.FileDAO;
import kr.co.farmstory.dto.FileDTO;

public enum FileService {
	INSTANCE;
	
	private FileDAO dao = FileDAO.INSTANCE;
	
	public FileDTO findById(String id) {
		return dao.selectById(id);
	}
	
	public List<FileDTO> upload(HttpServletRequest req) {
		
		// 반환용 파일 리스트
		List<FileDTO> dtoList = new ArrayList<>();
		
		// 파일 업로드 디렉터리 경로 구하기
		ServletContext ctx = req.getServletContext();
		String uploadPath = ctx.getRealPath("/upload");
		System.out.println(uploadPath);
		
		// 해당 디렉터리가 존재하지 않으면 신규생성
		File uploadDir = new File(uploadPath);

		if(!uploadDir.exists()) {
			uploadDir.mkdir();
		}
		
		try {
			// 첨부파일 객체 구하기
			Collection<Part> parts = req.getParts(); // part : 폼태그의 입력 필드 5개
			
			for(Part part : parts) { // 폼태그의 입력필드 갯수가 5개이므로 5회 반복
				
				// 원본 파일명 구하기
				String ofName = part.getSubmittedFileName();
				System.out.println("ofName : " + ofName);
				
				if (ofName != null && !ofName.isEmpty()) {
					// 저장 파일명 구하기
					int idx = ofName.lastIndexOf(".");
					String ext = ofName.substring(idx);
					String sfName = UUID.randomUUID().toString() + ext;			
					
					// 파일 저장
					part.write(uploadPath + File.separator + sfName);
					
					// 반환용 FileDTO 생성 및 리스트 저장
					FileDTO fileDTO = new FileDTO();
					fileDTO.setOriginalName(ofName);
					fileDTO.setStoredName(sfName);
					dtoList.add(fileDTO);
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return dtoList;
	}
	
	public int register(FileDTO dto) {
		return dao.insert(dto);
	}
	
	public void delete(String id) {
		dao.delete(id);
	}
}
