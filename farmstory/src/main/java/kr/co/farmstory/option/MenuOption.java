package kr.co.farmstory.option;

import java.util.List;

public enum MenuOption {
	INTRODUCTION(
		"팜스토리소개",
		"/farmstory/images/sub_top_tit1.png",
		"/farmstory/images/sub_aside_cate1_tit.png",
		List.of(CategoryOption.GREETING, CategoryOption.LOCATION)
	),
	CART(
		"장보기", 
		
	),
	CROPS_STORY("농작물이야기"),
	EVENT("이벤트"),
	COMMUNITY("커뮤니");
	
	private String menuName;
	private String subBannerTitleImagePath;
	private String asideTitleImagePath;
	private List<CategoryOption> categoryOptions;
	
	public String getMenuName() {
		return menuName;
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

	private MenuOption(
			String menuName, 
			String subBannerTitleImagePath, 
			String asideTitleImagePath,
			List<CategoryOption> categoryOptions) {
		this.menuName = menuName;
		this.subBannerTitleImagePath = subBannerTitleImagePath;
		this.asideTitleImagePath = asideTitleImagePath;
		this.categoryOptions = categoryOptions;
	}
}