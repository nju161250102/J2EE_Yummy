package edu.nju.yummy.repository;

import edu.nju.yummy.entity.AddressEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AddressRepository extends JpaRepository<AddressEntity, Integer> {

    void deleteAllByUserId(int userId);

    List<AddressEntity> findAllByUserId(int userId);

    @Nullable
    @Query("SELECT a FROM AddressEntity a WHERE a.userId = :userId and a.status = a.DEFAULT")
    AddressEntity findDefaultAddress(@Param("userId") int userId);
}
