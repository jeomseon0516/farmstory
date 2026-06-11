package kr.co.farmstory.option;

import java.util.List;

public enum MenuOption {
	INTRODUCTION(
		"Introduction",
		"팜스토리소개",
		"/farmstory/images/sub_top_tit1.png",
		"/farmstory/images/sub_aside_cate1_tit.png",
		List.of(CategoryOption.GREETING, CategoryOption.LOCATION)
	),
	
	CART(
		"Cart",
		"장보기", 
		"/farmstory/images/sub_top_tit2.png",
		"/farmstory/images/sub_aside_cate2_tit.png",
		List.of(CategoryOption.CART)
	),
	
	CROPS_STORY(
		"CropsStory",
		"농작물이야기",
		"/farmstory/images/sub_top_tit3.png",
		"/farmstory/images/sub_aside_cate3_tit.png",
		List.of(
			CategoryOption.CROPS_STORY, 
			CategoryOption.GARDENING, 
			CategoryOption.FARMING_SCHOOL)
	),
	
	EVENT(
		"Event",
		"이벤트",
		"/farmstory/images/sub_top_tit4.png",
		"/farmstory/images/sub_asdie_cate4_tit.png",
		List.of(CategoryOption.EVENT)),
	
	COMMUNITY(
		"Community",
		"커뮤니티",
		"/farmstory/images/sub_top_tit5.png",
		"/farmstory/images/sub_aside_cate5_tit.png",
		List.of(
			CategoryOption.NOTICE,
			CategoryOption.MENU,
			CategoryOption.CHEF,
			CategoryOption.QNA,
			CategoryOption.FAQ)
	);
	
	private String key;
	private String name;
	private String subBannerTitleImagePath;
	private String asideTitleImagePath;
	private List<CategoryOption> categoryOptions;
	
	public String getName() {
		return name;
	}

	public String getSubBannerTitleImagePath() {
		return subBannerTitleImagePath;
	}
	
	public String getAsideTitleImagePath() {
		return asideTitleImagePath;
	}

	public List<CategoryOption> getCategoryOptions() {
		return categoryOptions;
	}
	
	public static MenuOption from(String key) {
		for(MenuOption option : values()) {
			if (option.key.equals(key)) {
				return option;
			}
		}
		
		return null;
	}

	private MenuOption(
			String key,
			String menuName, 
			String subBannerTitleImagePath, 
			String asideTitleImagePath,
			List<CategoryOption> categoryOptions) {
		this.key = key;
		this.name = menuName;
		this.subBannerTitleImagePath = subBannerTitleImagePath;
		this.asideTitleImagePath = asideTitleImagePath;
		this.categoryOptions = categoryOptions;
	}
}