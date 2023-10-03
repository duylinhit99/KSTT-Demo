package model.bean;

public class Lop {
	private String maLop;
	private String tenLop;
	private String maTruong;
	private String namHoc;

	public String getMaLop() {
		return maLop;
	}

	public void setMaLop(String maLop) {
		this.maLop = maLop;
	}

	public String getTenLop() {
		return tenLop;
	}

	public void setTenLop(String tenLop) {
		this.tenLop = tenLop;
	}

	public String getMaTruong() {
		return maTruong;
	}

	public void setMaTruong(String maTruong) {
		this.maTruong = maTruong;
	}

	public String getNamHoc() {
		return namHoc;
	}

	public void setNamHoc(String namHoc) {
		this.namHoc = namHoc;
	}

	public Lop(String maLop, String tenLop, String maTruong, String namHoc) {
		super();
		this.maLop = maLop;
		this.tenLop = tenLop;
		this.maTruong = maTruong;
		this.namHoc = namHoc;
	}

	public Lop() {
		super();
	}

}
