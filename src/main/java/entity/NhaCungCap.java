package entity;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "")
//NHACUNGCAP(MANCC, TENNHACC, DIACHI, SODIENTHOAI)
public class NhaCungCap {
	@Id
	@Column(name = "MANCC")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int maNCC;
	
	@Column(name = "TENNHACC")
	private String tenNCC;
	
	@Column(name = "DIACHI")
	private String diaChi;
	
	@Column(name = "SODIENTHOAI")
	private String soDienThoai;
	
	@OneToMany(mappedBy = "nhaCungCap")
	private List<DienThoai> listDienThoai;

	public NhaCungCap(String tenNCC, String diaChi, String soDienThoai) {
		super();
		this.tenNCC = tenNCC;
		this.diaChi = diaChi;
		this.soDienThoai = soDienThoai;
	}

	public NhaCungCap(int maNCC, String tenNCC, String diaChi, String soDienThoai) {
		super();
		this.maNCC = maNCC;
		this.tenNCC = tenNCC;
		this.diaChi = diaChi;
		this.soDienThoai = soDienThoai;
	}

	public NhaCungCap() {
		super();
	}

	public int getMaNCC() {
		return maNCC;
	}

	public void setMaNCC(int maNCC) {
		this.maNCC = maNCC;
	}

	public String getTenNCC() {
		return tenNCC;
	}

	public void setTenNCC(String tenNCC) {
		this.tenNCC = tenNCC;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public List<DienThoai> getListDienThoai() {
		return listDienThoai;
	}

	public void setListDienThoai(List<DienThoai> listDienThoai) {
		this.listDienThoai = listDienThoai;
	}
	
	
	
	
}