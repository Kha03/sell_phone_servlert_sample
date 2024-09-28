package entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "DIENTHOAI")
//DIENTHOAI(MADT, TENDT, NAMSANXUAT, CAUHINH, MANCC, HINHANH)
public class DienThoai {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MADT")
	private int id;
	
	@Column(name = "TENDT")
	private String tenDT;
	
	@Column(name = "NAMSANXUAT")
	private int namSanXuat;
	
	@ManyToOne
	@JoinColumn(name = "MANCC")
	private NhaCungCap nhaCungCap;
	
	@Column(name = "HINHANH")
	private String hinhAnh;

	public DienThoai(int id, String tenDT, int namSanXuat, NhaCungCap nhaCungCap, String hinhAnh) {
		super();
		this.id = id;
		this.tenDT = tenDT;
		this.namSanXuat = namSanXuat;
		this.nhaCungCap = nhaCungCap;
		this.hinhAnh = hinhAnh;
	}

	public DienThoai(String tenDT, int namSanXuat, NhaCungCap nhaCungCap, String hinhAnh) {
		super();
		this.tenDT = tenDT;
		this.namSanXuat = namSanXuat;
		this.nhaCungCap = nhaCungCap;
		this.hinhAnh = hinhAnh;
	}

	public DienThoai() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTenDT() {
		return tenDT;
	}

	public void setTenDT(String tenDT) {
		this.tenDT = tenDT;
	}

	public int getNamSanXuat() {
		return namSanXuat;
	}

	public void setNamSanXuat(int namSanXuat) {
		this.namSanXuat = namSanXuat;
	}

	public NhaCungCap getNhaCungCap() {
		return nhaCungCap;
	}

	public void setNhaCungCap(NhaCungCap nhaCungCap) {
		this.nhaCungCap = nhaCungCap;
	}

	public String getHinhAnh() {
		return hinhAnh;
	}

	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}
	
}
