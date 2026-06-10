package kr.co.farmstory.dto;

public class FileDTO {
	private int id;
	private String originalName;
	private String storedName;
	private String uploadedAt;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOriginalName() {
		return originalName;
	}
	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}
	public String getStoredName() {
		return storedName;
	}
	public void setStoredName(String storedName) {
		this.storedName = storedName;
	}
	public String getUploadedAt() {
		return uploadedAt;
	}
	public void setUploadedAt(String uploadedAt) {
		this.uploadedAt = uploadedAt;
	}
	
	@Override
	public String toString() {
		return "FileDTO [id=" + id + ", originalName=" + originalName + ", storedName=" + storedName + ", uploadedAt="
				+ uploadedAt + "]";
	}
}
