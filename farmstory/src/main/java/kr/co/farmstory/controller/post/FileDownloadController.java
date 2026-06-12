package kr.co.farmstory.controller.post;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmstory.dto.FileDTO;
import kr.co.farmstory.service.FileService;
import kr.co.farmstory.service.PostFileService;

@WebServlet("/post/fileDownload.do")
public class FileDownloadController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	PostFileService postFileService = PostFileService.INSTANCE;
	FileService fileService = FileService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String postFileId = req.getParameter("postFileId");
		String fileId = req.getParameter("fileId");
		System.out.println(fileId);
		FileDTO fileDTO = fileService.findById(fileId);
		
		// response 파일 다운로드 헤더 수정
		resp.setContentType("application/octet-stream");
		resp.setHeader("Content-Disposition", "attachment; filename=" + URLEncoder.encode(fileDTO.getOriginalName(), "utf-8"));
		resp.setHeader("Content-Transfer-Encoding", "binary");
		resp.setHeader("Pragma", "no-cache");
		resp.setHeader("Cache-Control", "private");
		
		// 다운로드 파일 스트림 작업
		ServletContext ctx = req.getServletContext();
		String path = ctx.getRealPath("/upload");
		File savedFile = new File(path + File.separator + fileDTO.getStoredName());
		
		if (!savedFile.exists()) {
		    resp.sendError(HttpServletResponse.SC_NOT_FOUND);
		    return;
		}
		
		BufferedInputStream bis = new BufferedInputStream(new FileInputStream(savedFile));
		BufferedOutputStream bos = new BufferedOutputStream(resp.getOutputStream());
		
		bis.transferTo(bos); // 스트림 전송
		
		bos.flush();
		bos.close();
		bis.close();
		
		postFileService.increaseDownloadCount(postFileId);
	}
}
