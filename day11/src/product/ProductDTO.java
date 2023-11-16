package product;

// Data Transfer Object : 데이터를 전송하기 위한 그릇의 역할을 하는 클래스(객체)

//	IDX        NUMBER        
//	NAME       VARCHAR2(100) 
//	PRICE      NUMBER        
//	IMGPATH    VARCHAR2(100) 

public class ProductDTO {

	private int idx;
	private String name;
	private int price;
	private String imgPath;
	
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
