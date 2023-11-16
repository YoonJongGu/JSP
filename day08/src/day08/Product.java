package day08;

public class Product {
	
	private static int sequence = 10000;
	
	private int idx;
	private String name;
	private int price;
	private String imgPath;
	
	public Product() {}
		
	public Product(String name, int price, String imgPath) {		
		this.idx = ++sequence;
		this.name = name;
		this.price = price;
		this.imgPath = imgPath;
	}

	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}	
	
}
