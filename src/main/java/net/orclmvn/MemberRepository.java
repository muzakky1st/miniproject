package net.orclmvn;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public interface MemberRepository extends JpaRepository<Member, Integer> {

}
