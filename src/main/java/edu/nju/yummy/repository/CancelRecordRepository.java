package edu.nju.yummy.repository;

import edu.nju.yummy.entity.CancelRecord;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CancelRecordRepository extends JpaRepository<CancelRecord, Integer> {

    CancelRecord findByOrderId(int orderId);

}
