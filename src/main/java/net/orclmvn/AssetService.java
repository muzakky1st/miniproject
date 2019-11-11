package net.orclmvn;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class AssetService {
	@Autowired
	private AssetRepository repo;

	@Autowired
	private EntityManager em;

	public List<Asset> listAll() {
		return repo.findAll();
	}
	
	public void save(Asset asset) {
		repo.save(asset);
	}
	
	public Asset get(Integer id) {
		return repo.findById(id).get();
	}
	
	public void delete(Integer id) {
		repo.deleteById(id);
	}
}
