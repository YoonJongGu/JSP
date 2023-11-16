package food;

public class Food {
	private int idx;			// 구분하기 위한 고유번호
	private String storeName;
	private String menuName;
	private String category;
	private int price;
	
	public Food() {}
	
	public Food(int idx, String storeName, String menuName, String category, int price) {	
		this.idx = idx;
		this.storeName = storeName;
		this.menuName = menuName;
		this.category = category;
		this.price = price;
	}
		
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
}
