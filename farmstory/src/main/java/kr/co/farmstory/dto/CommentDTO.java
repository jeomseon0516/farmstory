package kr.co.farmstory.dto;

public class CommentDTO {
	private int id;
	private int postId;
	private String writerId;
	private String content;
	private String ipAddress;
	private String writtenAt;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPostId() {
		return postId;
	}
	public void setPostId(int postId) {
		this.postId = postId;
	}
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getIpAddress() {
		return ipAddress;
	}
	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}
	public String getWrittenAt() {
		return writtenAt;
	}
	public void setWrittenAt(String writtenAt) {
		this.writtenAt = writtenAt;
	}
	
	@Override
	public String toString() {
		return "CommentDTO [id=" + id + ", postId=" + postId + ", writerId=" + writerId + ", content=" + content
				+ ", ipAddress=" + ipAddress + ", writtenAt=" + writtenAt + "]";
	}
}
