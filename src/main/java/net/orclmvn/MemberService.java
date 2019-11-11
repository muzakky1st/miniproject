package net.orclmvn;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	@Autowired
	private MemberRepository repo;

	@Autowired
	private EntityManager em;

	public List<Member> listAll() {
		return repo.findAll();
	}

	public void save(Member member) {
		repo.save(member);
	}

	public Member get(Integer id) {
		return repo.findById(id).get();
	}

	public void delete(Integer id) {
		repo.deleteById(id);
	}
}
