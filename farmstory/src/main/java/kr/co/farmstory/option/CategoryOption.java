package kr.co.farmstory.option;

public enum CategoryOption {
	GREETING(
		"인사말",
		"#",
		"/farmstory/images/sub_cate1_lnb1.png",
		"/farmstory/images/sub_cate1_lnb1_ov.png",
		"/farmstory/images/sub_nav_tit_cate1_tit1.png"
	),
	
	LOCATION(
		"찾아오시는길",
		"#",
		"/farmstory/images/sub_cate1_lnb2.png",
		"/farmstory/images/sub_cate1_lnb2_ov.png",
		"/farmstory/images/sub_nav_tit_cate1_tit2.png"
	),
	
	CART(
		"장보기",
		"/farmstory/market/cart/cart.do?menu=Cart&category=CART",
		"/farmstory/images/sub_cate2_lnb1.png",
		"/farmstory/images/sub_cate2_lnb1_ov.png",
		"/farmstory/images/sub_nav_tit_cate2_tit1.png"
	),
	
	CROPS_STORY(
		"농작물이야기",
		"/farmstory/post/list.do?menu=CropsStory&category=CROPS_STORY",
		"/farmstory/images/sub_cate3_lnb1.png",
		"/farmstory/images/sub_cate3_lnb1_ov.png",
		"/farmstory/images/sub_nav_tit_cate3_tit1.png"
	),
	
	GARDENING(
		"텃밭가꾸기",
		"/farmstory/post/list.do?menu=CropsStory&category=GARDENING",
		"/farmstory/images/sub_cate3_lnb2.png",
		"/farmstory/images/sub_cate3_lnb2_ov.png",
		"/farmstory/images/sub_nav_tit_cate3_tit2.png"
	),
	
	FARMING_SCHOOL(
		"귀농학교",
		"/farmstory/post/list.do?menu=CropsStory&category=FARMING_SCHOOL",
		"/farmstory/images/sub_cate3_lnb3.png",
		"/farmstory/images/sub_cate3_lnb3_ov.png",
		"/farmstory/images/sub_nav_tit_cate3_tit3.png"
	),
	
	EVENT(
		"이벤트",
		"#",
		"/farmstory/images/sub_cate4_lnb1.png",
		"/farmstory/images/sub_cate4_lnb1_ov.png",
		"/farmstory/images/sub_nav_tit_cate4_tit1.png"
	),
	
	NOTICE(
		"공지사항",
		"/farmstory/post/list.do?menu=Community&category=NOTICE",
		"/farmstory/images/sub_cate5_lnb1.png",
		"/farmstory/images/sub_cate5_lnb1_ov.png",
		"/farmstory/images/sub_nav_tit_cate5_tit1.png"
	),
	
	MENU(
		"오늘의식단",
		"/farmstory/post/list.do?menu=Community&category=MENU",
		"/farmstory/images/sub_cate5_lnb2.png",
		"/farmstory/images/sub_cate5_lnb2_ov.png",
		"/farmstory/images/sub_nav_tit_cate5_tit2.png"
	),
	
	CHEF(
		"나도요리사",
		"/farmstory/post/list.do?menu=Community&category=CHEF",
		"/farmstory/images/sub_cate5_lnb3.png",
		"/farmstory/images/sub_cate5_lnb3_ov.png",
		"/farmstory/images/sub_nav_tit_cate5_tit3.png"
	),
	
	QNA(
		"1:1고객문의",
		"/farmstory/post/list.do?menu=Community&category=QNA",
		"/farmstory/images/sub_cate5_lnb4.png",
		"/farmstory/images/sub_cate5_lnb4_ov.png",
		"/farmstory/images/sub_nav_tit_cate5_tit4.png"
	),
	
	FAQ(
		"자주묻는질문",
		"/farmstory/post/list.do?menu=Community&category=FAQ",
		"/farmstory/images/sub_cate5_lnb5.png",
		"/farmstory/images/sub_cate5_lnb5_ov.png",
		"/farmstory/images/sub_nav_tit_cate5_tit5.png"
	);
	
	private String path;
	private String name;
	private String inbImagePath;
	private String inbOvImagePath;
	private String titleImagePath;
	
	public String getPath() {
		return path;
	}
	
	public String getName() {
		return name;
	}

	public String getInbImagePath() {
		return inbImagePath;
	}

	public String getInbOvImagePath() {
		return inbOvImagePath;
	}

	public String getTitleImagePath() {
		return titleImagePath;
	}
	
	public static CategoryOption from(String category) {
		for(CategoryOption option : values()) {
			if (option.toString().equals(category)) {
				return option;
			}
		}
		
		return null;
	}

	private CategoryOption(
			String name, 
			String path,
			String inbImagePath, 
			String inbOvImagePath,
			String titleImagePath) {
		this.path = path;
		this.name = name;
		this.inbImagePath = inbImagePath;
		this.inbOvImagePath = inbOvImagePath;
		this.titleImagePath = titleImagePath;
	}
}
