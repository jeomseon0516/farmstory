package kr.co.farmstory.dao;

import kr.co.farmstory.dto.TermsDTO;
import kr.co.farmstory.util.DBHelper;
import kr.co.farmstory.util.SqlTerms;

public class TermsDAO extends DBHelper {

	private static final TermsDAO INSTANCE = new TermsDAO();

	public static TermsDAO getInstance() {
		return INSTANCE;
	}

	private TermsDAO() {}

	public TermsDTO selectTerms() {

		TermsDTO dto = null;

		try {
			conn = getConnection();

			psmt = conn.prepareStatement(SqlTerms.SELECT_TERMS);
			psmt.setInt(1, 1);

			rs = psmt.executeQuery();

			if(rs.next()) {
				dto = new TermsDTO();

				dto.setTermsId(rs.getInt("id"));
				dto.setTermsBasic(rs.getString("basic"));
				dto.setTermsPrivacy(rs.getString("privacy"));
			}

			closeAll();

		} catch(Exception e) {
			e.printStackTrace();
		}

		return dto;
	}
}