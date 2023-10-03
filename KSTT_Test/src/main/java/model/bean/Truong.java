package model.bean;

public class Truong {
	private String maTruong;
	private String tenTruong;

	public String getMaTruong() {
		return maTruong;
	}

	public void setMaTruong(String maTruong) {
		this.maTruong = maTruong;
	}

	public String getTenTruong() {
		return tenTruong;
	}

	public void setTenTruong(String tenTruong) {
		this.tenTruong = tenTruong;
	}

	public Truong(String maTruong, String tenTruong) {
		super();
		this.maTruong = maTruong;
		this.tenTruong = tenTruong;
	}

	public Truong() {
		super();
	}

}
