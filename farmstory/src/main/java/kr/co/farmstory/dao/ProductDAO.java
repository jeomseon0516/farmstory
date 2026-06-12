package kr.co.farmstory.dao;

import java.util.ArrayList;
import java.util.List;

import kr.co.farmstory.dto.ProductDTO;
import kr.co.farmstory.sql.SqlProduct;
import kr.co.farmstory.util.DBHelper;

public class ProductDAO extends DBHelper {
	
	// 싱글톤
	private static ProductDAO instance = new ProductDAO();

	public static ProductDAO getInstance() {
		return instance;
	}

	private ProductDAO() {}
	
	// 전체 상품 목록 반환
	public List<ProductDTO> selectAll() {
		
		List<ProductDTO> dtoList = new ArrayList<>();
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(SqlProduct.SELECT_ALL_PRODUCT);
			
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				ProductDTO dto = new ProductDTO();

				dto.setProdId(rs.getInt("id"));
				dto.setProdName(rs.getString("name"));
				dto.setProdType(rs.getString("type"));
				dto.setProdPrice(rs.getInt("price"));
				dto.setProdPoint(rs.getInt("point"));
				dto.setProdDiscount(rs.getInt("discount"));
				dto.setProdDeliveryCost(rs.getInt("delivery_cost"));
				dto.setProdStock(rs.getInt("stock"));
				dto.setProdListImageFileId(rs.getInt("list_image_file_id"));
				dto.setProdInfoImageFileId(rs.getInt("info_image_file_id"));
				dto.setProdDescriptionImageFileId(rs.getInt("description_image_file_id"));
				dto.setProdRemark(rs.getString("remark"));

				// 등록일
				dto.setCreatedAt(rs.getString("created_at"));

				// 상품목록 이미지 저장 파일명
				dto.setProdListImageStoredName(rs.getString("stored_name"));

				dtoList.add(dto);
			}

			closeAll();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtoList;
	}
	
	// 선택한 상품 1건 반환
	public ProductDTO select(String prodId) {
		
		ProductDTO dto = null;
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(SqlProduct.SELECT_PRODUCT);
			psmt.setString(1, prodId);

			rs = psmt.executeQuery();
			
			if (rs.next()) {
				dto = new ProductDTO();

				dto.setProdId(rs.getInt("id"));
				dto.setProdName(rs.getString("name"));
				dto.setProdType(rs.getString("type"));
				dto.setProdPrice(rs.getInt("price"));
				dto.setProdPoint(rs.getInt("point"));
				dto.setProdDiscount(rs.getInt("discount"));
				dto.setProdDeliveryCost(rs.getInt("delivery_cost"));
				dto.setProdStock(rs.getInt("stock"));
				dto.setProdListImageFileId(rs.getInt("list_image_file_id"));
				dto.setProdInfoImageFileId(rs.getInt("info_image_file_id"));
				dto.setProdDescriptionImageFileId(rs.getInt("description_image_file_id"));
				dto.setProdRemark(rs.getString("remark"));

				// 등록일
				dto.setCreatedAt(rs.getString("created_at"));
			}

			closeAll();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return dto;
	}

	// 상품 등록
	public void insert(ProductDTO dto) {
			
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(SqlProduct.INSERT_PRODUCT);
			
			psmt.setString(1, dto.getProdName());
			psmt.setString(2, dto.getProdType());
			psmt.setInt(3, dto.getProdPrice());
			psmt.setInt(4, dto.getProdPoint());
			psmt.setInt(5, dto.getProdDiscount());
			psmt.setInt(6, dto.getProdDeliveryCost());
			psmt.setInt(7, dto.getProdStock());
			psmt.setInt(8, dto.getProdListImageFileId());
			psmt.setInt(9, dto.getProdInfoImageFileId());
			psmt.setInt(10, dto.getProdDescriptionImageFileId());
			psmt.setString(11, dto.getProdRemark());
			
			psmt.executeUpdate();
			
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}