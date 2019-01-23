package edu.nju.yummy.repository;

import edu.nju.yummy.entity.KeyRecord;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.lang.Nullable;

public interface KeyRecordRepository extends JpaRepository<KeyRecord, Integer> {

    @Nullable
    @Query("SELECT r.logId FROM KeyRecord r WHERE r.identity=:identity and r.logName=:username and r.password=:password")
    Integer checkIdentity(@Param("identity") int identity, @Param("username") String username, @Param("password") String password);

    @Nullable
    KeyRecord findByIdentityAndLogId(int identity, int logId);

}
