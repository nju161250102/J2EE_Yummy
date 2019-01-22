package edu.nju.yummy.repository;

import edu.nju.yummy.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer> {

    @Nullable
    UserEntity findByEmail(String email);
}
