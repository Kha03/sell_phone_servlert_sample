package service;

import java.util.List;

import dao.DienThoaiDao;
import entity.DienThoai;
import entity.NhaCungCap;
import impl.DienThoaiImpl;
import jakarta.persistence.EntityManager;

public class ServiceDienThoai {
	private static DienThoaiDao dThoaiDao;
	private EntityManager eManager;
	
	public ServiceDienThoai(EntityManager eManager) {
        this.eManager = eManager;
        dThoaiDao = new DienThoaiImpl(eManager);
	}
	public List<DienThoai> getAll() {
		return dThoaiDao.getAll();
	}

	public DienThoai getById(int id) {
		return dThoaiDao.getById(id);
	}

	public boolean insert(String tenDT, int namSx,int maNcc, String hinhAnh) {
		NhaCungCap ncc = new NhaCungCap();
		ncc.setMaNCC(maNcc);
		DienThoai dt = new DienThoai(tenDT, namSx,ncc, hinhAnh);
		return dThoaiDao.insert(dt);
	}

	public boolean update(String tenDT, int namSx,int maNcc, String hinhAnh) {
		NhaCungCap ncc = new NhaCungCap();
		ncc.setMaNCC(maNcc);
		DienThoai dt = new DienThoai(tenDT, namSx,ncc, hinhAnh);
		return dThoaiDao.update(dt);
	}

	public boolean delete(int id) {
		return dThoaiDao.delete(id);
	}

	public List<DienThoai> getByName(String name) {
		return dThoaiDao.getByName(name);
	}

	public List<DienThoai> getByNCC(int maNCC) {
		return dThoaiDao.getByNCC(maNCC);
	}

}
