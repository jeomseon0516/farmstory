package kr.co.farmstory.option;

public enum CategoryOption {
	GREETING,
	LOCATION,
	CART,
	CROPS_STORY,
	GARDENING,
	FARMING_SCHOOL,
	EVENT,
	NOTICE,
	MENU,
	CHEF,
	QNA,
	FAQ;
	
	private String categoryName;
	private String categoryInbImagePath;
	private String categoryInbOvImagePath;
	private String categoryTitleImagePath;
	
	public String getCategoryName() {
		return categoryName;
	}

	public String getCategoryInbImagePath() {
		return categoryInbImagePath;
	}

	public String getCategoryInbOvImagePath() {
		return categoryInbOvImagePath;
	}

	public String getCategoryTitleImagePath() {
		return categoryTitleImagePath;
	}

	private CategoryOption(
			String categoryName, 
			String categoryInbImagePath, 
			String categoryInbOvImagePath,
			String categoryTitleImagePath) {
		this.categoryName = categoryName;
		this.categoryInbImagePath = categoryInbImagePath;
		this.categoryInbOvImagePath = categoryInbOvImagePath;
		this.categoryTitleImagePath = categoryTitleImagePath;
	}
}
