package kr.co.farmstory.dto;

public class PostFileDTO {
	private int id;
	private int postId;
	private int fileId;
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

	public int getFileId() {
		return fileId;
	}
	
	public void setFileId(int fileId) {
		this.fileId = fileId;
	}
	
	public FileDTO getFile() {
		return file;
	}
	
	public void setFile(FileDTO file) {
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
		return "PostFileDTO [id=" + id + ", postId=" + postId + ", fileId=" + fileId + ", file=" + file
				+ ", downloadCount=" + downloadCount + "]";
	}
}
