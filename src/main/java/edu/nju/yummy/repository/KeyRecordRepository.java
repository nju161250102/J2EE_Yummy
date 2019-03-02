package edu.nju.yummy.repository;

import edu.nju.yummy.entity.KeyRecord;
import edu.nju.yummy.entity.UserType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.lang.Nullable;

public interface KeyRecordRepository extends JpaRepository<KeyRecord, Integer> {

    @Nullable
    @Query("SELECT r.logId FROM KeyRecord r WHERE r.userType=:userType and r.logName=:username and r.password=:password")
    Integer checkIdentity(@Param("userType") UserType userType, @Param("username") String username, @Param("password") String password);

    @Nullable
    KeyRecord findByUserTypeAndLogId(UserType userType, int logId);

}
