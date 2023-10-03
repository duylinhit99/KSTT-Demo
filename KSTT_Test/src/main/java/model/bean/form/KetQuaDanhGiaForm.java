package model.bean.form;

import java.util.Date;

public class KetQuaDanhGiaForm {
	private String maHocSinh;
	private String tenHocSinh;
	private String maLop;
	private String tenLop;
	private String tenTruong;
	private boolean gioiTinh;
	private String namHoc;
	private Date thoiGianDanhGia;
	private String trangThai;
	private String phanLoaiSucKhoe;
	private int tongDiemCamXuc;
	private int tongDiemHanhVi;
	private int tongDiemTangDong;
	private int tongDiemQuanHeBanBe;
	private int tongDiemTienXaHoi;
	private int tongDiemChung;

	public String getPhanLoaiSucKhoe() {
		return phanLoaiSucKhoe;
	}

	public void setPhanLoaiSucKhoe(String phanLoaiSucKhoe) {
		this.phanLoaiSucKhoe = phanLoaiSucKhoe;
	}

	public String getMaHocSinh() {
		return maHocSinh;
	}

	public void setMaHocSinh(String maHocSinh) {
		this.maHocSinh = maHocSinh;
	}

	public String getTenHocSinh() {
		return tenHocSinh;
	}

	public void setTenHocSinh(String tenHocSinh) {
		this.tenHocSinh = tenHocSinh;
	}

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

	public String getTenTruong() {
		return tenTruong;
	}

	public void setTenTruong(String tenTruong) {
		this.tenTruong = tenTruong;
	}

	public boolean isGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(boolean gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public String getNamHoc() {
		return namHoc;
	}

	public void setNamHoc(String namHoc) {
		this.namHoc = namHoc;
	}

	public Date getThoiGianDanhGia() {
		return thoiGianDanhGia;
	}

	public void setThoiGianDanhGia(Date thoiGianDanhGia) {
		this.thoiGianDanhGia = thoiGianDanhGia;
	}

	public String getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

	public int getTongDiemCamXuc() {
		return tongDiemCamXuc;
	}

	public void setTongDiemCamXuc(int tongDiemCamXuc) {
		this.tongDiemCamXuc = tongDiemCamXuc;
	}

	public int getTongDiemHanhVi() {
		return tongDiemHanhVi;
	}

	public void setTongDiemHanhVi(int tongDiemHanhVi) {
		this.tongDiemHanhVi = tongDiemHanhVi;
	}

	public int getTongDiemTangDong() {
		return tongDiemTangDong;
	}

	public void setTongDiemTangDong(int tongDiemTangDong) {
		this.tongDiemTangDong = tongDiemTangDong;
	}

	public int getTongDiemQuanHeBanBe() {
		return tongDiemQuanHeBanBe;
	}

	public void setTongDiemQuanHeBanBe(int tongDiemQuanHeBanBe) {
		this.tongDiemQuanHeBanBe = tongDiemQuanHeBanBe;
	}

	public int getTongDiemTienXaHoi() {
		return tongDiemTienXaHoi;
	}

	public void setTongDiemTienXaHoi(int tongDiemTienXaHoi) {
		this.tongDiemTienXaHoi = tongDiemTienXaHoi;
	}

	public int getTongDiemChung() {
		return tongDiemChung;
	}

	public void setTongDiemChung(int tongDiemChung) {
		this.tongDiemChung = tongDiemChung;
	}

	public KetQuaDanhGiaForm(String maHocSinh, String tenHocSinh, String maLop, String tenLop, String tenTruong,
			boolean gioiTinh, String namHoc, Date thoiGianDanhGia, String trangThai, String phanLoaiSucKhoe,
			int tongDiemCamXuc, int tongDiemHanhVi, int tongDiemTangDong, int tongDiemQuanHeBanBe,
			int tongDiemTienXaHoi, int tongDiemChung) {
		super();
		this.maHocSinh = maHocSinh;
		this.tenHocSinh = tenHocSinh;
		this.maLop = maLop;
		this.tenLop = tenLop;
		this.tenTruong = tenTruong;
		this.gioiTinh = gioiTinh;
		this.namHoc = namHoc;
		this.thoiGianDanhGia = thoiGianDanhGia;
		this.trangThai = trangThai;
		this.phanLoaiSucKhoe = phanLoaiSucKhoe;
		this.tongDiemCamXuc = tongDiemCamXuc;
		this.tongDiemHanhVi = tongDiemHanhVi;
		this.tongDiemTangDong = tongDiemTangDong;
		this.tongDiemQuanHeBanBe = tongDiemQuanHeBanBe;
		this.tongDiemTienXaHoi = tongDiemTienXaHoi;
		this.tongDiemChung = tongDiemChung;
	}

	public KetQuaDanhGiaForm() {
		super();
	}

}
