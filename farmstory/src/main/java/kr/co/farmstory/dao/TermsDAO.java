package kr.co.farmstory.dao;

import kr.co.farmstory.dto.TermsDTO;
import kr.co.farmstory.util.DBHelper;
import kr.co.farmstory.util.SqlTerms;

public class TermsDAO extends DBHelper {

	public TermsDTO select(int no) {
		
		//반환용 DTO
		TermsDTO dto = null;
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(SqlTerms.SELECT_TERMS);
			psmt.setInt(1,  no);
			
			rs = psmt.executeQuery();
		
			if(rs.next()) {
				dto = new TermsDTO();
				dto.setTermsId(rs.getInt(1));
				dto.setTermsBasic(rs.getString(2));
				dto.setTermsPrivacy(rs.getString(3));
			}
			closeAll();	
			} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	} 
	
}
