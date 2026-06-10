package kr.co.farmstory.dto;

public class TermsDTO {

	
	// termsDTO 속성
	private int termsId;
	private String termsBasic;
	private String termsPrivacy;
	
	//get&setter 선언
	public int getTermsId() {
		return termsId;
	}
	public void setTermsId(int termsId) {
		this.termsId = termsId;
	}
	public String getTermsBasic() {
		return termsBasic;
	}
	public void setTermsBasic(String termsBasic) {
		this.termsBasic = termsBasic;
	}
	public String getTermsPrivacy() {
		return termsPrivacy;
	}
	public void setTermsPrivacy(String termsPrivacy) {
		this.termsPrivacy = termsPrivacy;
	}
		
}
