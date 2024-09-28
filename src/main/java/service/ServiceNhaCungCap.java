package service;

import java.util.List;

import dao.NhaCungCapDao;
import entity.NhaCungCap;
import impl.NhaCungCapImpl;
import jakarta.persistence.EntityManager;

public class ServiceNhaCungCap {
	private static NhaCungCapDao nccDao;
	private EntityManager eManager;
	
	public ServiceNhaCungCap(EntityManager eManager) {
        this.eManager = eManager;
        nccDao = new NhaCungCapImpl(eManager);
	}
	public List<NhaCungCap> getAll() {
		return nccDao.getAll();
	}

	public NhaCungCap getById(int id) {
		return nccDao.getById(id);
	}

	public boolean insert(String tenNCC, String diaChi, String soDienThoai) {
		NhaCungCap ncc = new NhaCungCap(tenNCC, diaChi, soDienThoai);
		return nccDao.insert(ncc);
	}

	public boolean update(String tenNCC, String diaChi, String soDienThoai) {
		NhaCungCap ncc = new NhaCungCap(tenNCC, diaChi, soDienThoai);
		return nccDao.update(ncc);
	}

	public boolean delete(int id) {
		return nccDao.delete(id);
	}

	public List<NhaCungCap> getByName(String name) {
		return nccDao.getByName(name);
	}

	public List<NhaCungCap> getByAddress(String address) {
		return nccDao.getByAddress(address);
	}

	public List<NhaCungCap> getByPhone(String phone) {
		return nccDao.getByPhone(phone);
	} 

}
