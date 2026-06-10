package kr.co.farmstory.dto;

import java.util.List;

public class PostDTO {
	private int id;
	private String writerId;
	private String category;
	private String title;
	private String content;
	private int viewCount;
	private String writtenAt;
	private String ipAddress;
	private String nickname;
	private List<PostFileDTO>
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public int getViewCount() {
		return viewCount;
	}
	
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	
	public String getWrittenAt() {
		return writtenAt;
	}
	public void setWrittenAt(String writtenAt) {
		this.writtenAt = writtenAt;
	}
	public String getIpAddress() {
		return ipAddress;
	}
	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}
	
	@Override
	public String toString() {
		return "PostDTO [id=" + id + ", writerId=" + writerId + ", category=" + category + ", title=" + title
				+ ", content=" + content + ", viewCount=" + viewCount + ", writtenAt=" + writtenAt + ", ipAddress="
				+ ipAddress + "]";
	}
}
