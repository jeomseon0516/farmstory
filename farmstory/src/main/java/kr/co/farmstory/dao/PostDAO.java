package kr.co.farmstory.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import kr.co.farmstory.dto.PostDTO;
import kr.co.farmstory.sql.PostSQL;
import kr.co.farmstory.util.ConnectionProvider;

public class PostDAO {
	private static PostDAO instance = new PostDAO();
	private PostDAO() {}
	public static PostDAO getInstance() { return instance; }

	public PostDTO select(String id) {
		// 반환용 DTO
		PostDTO dto = null;

		try(Connection conn = ConnectionProvider.getConnection();
			PreparedStatement psmt = conn.prepareStatement(PostSQL.SELECT)) {
			psmt.setString(1, id);

			try (ResultSet rs = psmt.executeQuery()) {
				if (rs.next()) {
					dto = new PostDTO();
					dto.setId(rs.getInt(1));
					dto.setWriterId(rs.getString(2));
					dto.setCategory(rs.getString(3));
					dto.setTitle(rs.getString(4));
					dto.setContent(rs.getString(5));
					dto.setViewCount(rs.getInt(6));
					dto.setIpAddress(rs.getString(7));
					dto.setWrittenAt(rs.getString(8));
					dto.setNickname(rs.getString(9));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dto;
	}
	
	public int selectCount(String category) {
		int total = 0;
		
		try (Connection conn = ConnectionProvider.getConnection();
			 PreparedStatement psmt = conn.prepareStatement(PostSQL.SELECT_COUNT)) {
			
			psmt.setString(1, category);
			
			try(ResultSet rs = psmt.executeQuery()) {
				if (rs.next()) {
					total = rs.getInt(1);
				}
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return total;
	}
	
	public int selectCountByKeyword(String category, String keyword) {
		int total = 0;
		
		try (Connection conn = ConnectionProvider.getConnection();
			 PreparedStatement psmt = conn.prepareStatement(PostSQL.SELECT_COUNT_BY_KEYWORD)) {
			
			psmt.setString(1, category);
			psmt.setString(2, "%" + keyword + "%");
			
			try(ResultSet rs = psmt.executeQuery()) {
				if(rs.next()) {
					total = rs.getInt(1);
				}
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return total;
	}

	public List<PostDTO> selectAllForList(int offset, String category) {
		List<PostDTO> dtoList = new ArrayList<>();

		try(Connection conn = ConnectionProvider.getConnection();
			PreparedStatement psmt = conn.prepareStatement(PostSQL.SELECT_ALL_FOR_LIST)) {
			
			psmt.setString(1, category);
			psmt.setInt(2, offset);
			
			try (ResultSet rs = psmt.executeQuery()) {
				if (rs.next()) {
					PostDTO dto = new PostDTO();
					dto.setId(rs.getInt(1));
					dto.setTitle(rs.getString(2));
					dto.setWriterId(rs.getString(3));
					dto.setCategory(rs.getString(4));
					dto.setViewCount(rs.getInt(5));
					dto.setWrittenAt(rs.getString(6));
					dto.setNickname(rs.getString(7));
					dto.setCommentCount(rs.getInt(8));
					dtoList.add(dto);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtoList;
	}
	
	public List<PostDTO> selectAllForListByKeyword(int offset, String category, String keyword) {
		List<PostDTO> dtoList = new ArrayList<>();

		try(Connection conn = ConnectionProvider.getConnection();
			PreparedStatement psmt = conn.prepareStatement(PostSQL.SELECT_ALL_FOR_LIST_SEARCH)) {

			try (ResultSet rs = psmt.executeQuery()) {
				if (rs.next()) {
					PostDTO dto = new PostDTO();
					dto.setId(rs.getInt(1));
					dto.setWriterId(rs.getString(2));
					dto.setCategory(rs.getString(3));
					dto.setTitle(rs.getString(4));
					dto.setContent(rs.getString(5));
					dto.setViewCount(rs.getInt(6));
					dto.setIpAddress(rs.getString(7));
					dto.setWrittenAt(rs.getString(8));
					dtoList.add(dto);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtoList;
	}

	// 글쓰기
	public int insert(PostDTO dto) {
		int postId = 0;

		try (Connection conn = ConnectionProvider.getConnection();
			 PreparedStatement psmt = conn.prepareStatement(
					 PostSQL.INSERT, 
					 Statement.RETURN_GENERATED_KEYS)) {
			psmt.setString(1, dto.getWriterId());
			psmt.setString(2, dto.getCategory());
			psmt.setString(3, dto.getTitle());
			psmt.setString(4, dto.getContent());
			psmt.setString(5, dto.getIpAddress());
			psmt.executeUpdate();

			try (ResultSet rs = psmt.getGeneratedKeys()) {
				if (rs.next()) {
					postId = rs.getInt(1);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return postId;
	}

	// 조회수 증가
	public void updateViewCount(String id) {
		try (Connection conn = ConnectionProvider.getConnection();
			 PreparedStatement psmt = conn.prepareStatement(PostSQL.INCREASE_VIEW_COUNT)) {
			psmt.setString(1, id);
			psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 글수정
	public void update(PostDTO dto) {
		try (Connection conn = ConnectionProvider.getConnection();
			 PreparedStatement psmt = conn.prepareStatement(PostSQL.UPDATE)) {
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setInt(3, dto.getId());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 글삭제
	public void delete(String id) {
		try (Connection conn = ConnectionProvider.getConnection();
			 PreparedStatement psmt = conn.prepareStatement(PostSQL.DELETE)) {
			psmt.setString(1, id);
			psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
