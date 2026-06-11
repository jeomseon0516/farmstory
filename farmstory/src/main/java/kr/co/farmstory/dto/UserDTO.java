package kr.co.farmstory.dto;

public class UserDTO {
	
	private String id;
	private String password;
	private String name;
	private String nickname;
	private String email;
	private String zipCode;
	private String role;
	private String address;
	private String detailAddress;
	private String phone;
	private String createdAt;
	private String deletedAt;
	private String ipAddress;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return password;
	}
	public void setPass(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDetailAddress() {
		return detailAddress;
	}
	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}
	public String getDeletedAt() {
		return deletedAt;
	}
	public void setDeletedAt(String deletedAt) {
		this.deletedAt = deletedAt;
	}
	public String getIpAddress() {
		return ipAddress;
	}
	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;		
	}
	
	@Override
	public String toString() {
		return "UserDTO [id=" + id + ", password=" + password + ", name=" + name + ", nickname=" + nickname + ", email=" + email
				+ ", zipCode=" + zipCode + ", address=" + address + ", detailAddress=" + detailAddress + ", phone="
				+ phone + ", createdAt=" + createdAt + ", deletedAt=" + deletedAt + ", ipAddress=" + ipAddress + "]";
	}
	
	
	
}