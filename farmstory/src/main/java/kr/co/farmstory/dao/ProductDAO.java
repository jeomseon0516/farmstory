package kr.co.farmstory.dao;

import java.util.ArrayList;
import java.util.List;

import kr.co.farmstory.dto.ProductDTO;
import kr.co.farmstory.util.DBHelper;
import kr.co.farmstory.util.SqlProduct;

public class ProductDAO extends DBHelper {
	
	// 싱글톤
	private static ProductDAO instance = new ProductDAO();
	public static ProductDAO getInstance() {
		return instance;
	}
	private ProductDAO() {}
	
	// 전체 상품 목록 반환
	public List<ProductDTO> selectAll() {
		
		// 반환용 List
		List<ProductDTO> dtoList = new ArrayList<>();
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(SqlProduct.SELECT_ALL_PRODUCT);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				ProductDTO dto = new ProductDTO();
				dto.setProdId(rs.getInt(1));
				dto.setProdName(rs.getString(2));
				dto.setProdType(rs.getString(3));
				dto.setProdPrice(rs.getInt(4));
				dto.setProdPoint(rs.getInt(5));
				dto.setProdDiscount(rs.getInt(6));
				dto.setProdDeliveryCost(rs.getInt(7));
				dto.setProdStock(rs.getInt(8));
				dto.setProdListImageFileId(rs.getInt(9));
				dto.setProdInfoImageFileId(rs.getInt(10));
				dto.setProdDescriptionImageFileId(rs.getInt(11));
				dto.setProdRemark(rs.getString(12));
				dtoList.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dtoList;
		
	}
	
	// 선택한 상품 목록 반환
	public ProductDTO select(String prodId) {
		
		// 반환용 DTO 생성
		ProductDTO dto = null;
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(SqlProduct.SELECT_PRODUCT);
			psmt.setString(1, prodId);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto = new ProductDTO();
				dto.setProdId(rs.getInt(1));
				dto.setProdName(rs.getString(2));
				dto.setProdType(rs.getString(3));
				dto.setProdPrice(rs.getInt(4));
				dto.setProdPoint(rs.getInt(5));
				dto.setProdDiscount(rs.getInt(6));
				dto.setProdDeliveryCost(rs.getInt(7));
				dto.setProdStock(rs.getInt(8));
				dto.setProdListImageFileId(rs.getInt(9));
				dto.setProdInfoImageFileId(rs.getInt(10));
				dto.setProdDescriptionImageFileId(rs.getInt(11));
				dto.setProdRemark(rs.getString(12));
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
