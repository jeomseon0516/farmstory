package kr.co.farmstory.dto;

public class PostFileDTO {
	private int id;
	private int postId;
	private FileDTO file;
	private int downloadCount;
	
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
	public FileDTO getFile() {
		return file;
	}
	public void setFileId(FileDTO file) {
		this.file = file;
	}
	public int getDownloadCount() {
		return downloadCount;
	}
	public void setDownloadCount(int downloadCount) {
		this.downloadCount = downloadCount;
	}
	
	@Override
	public String toString() {
		return "PostFileDTO [id=" + id + ", postId=" + postId + ", file=" + file.toString() + ", downloadCount="
				+ downloadCount + "]";
	}
}
