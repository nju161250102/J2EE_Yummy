package edu.nju.yummy.repository;

import edu.nju.yummy.entity.VCode;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Repository;

@Repository
public interface VCodeRepository extends JpaRepository<VCode, Integer> {

    @Nullable
    VCode findByEmail(String email);
}
