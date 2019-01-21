package edu.nju.yummy.repository;

import edu.nju.yummy.model.VCode;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Repository;

@Repository
public interface VCodeRepository extends JpaRepository<VCode, Integer> {

    @Nullable
    @Query("SELECT vcode FROM VCode vcode WHERE vcode.email=:email AND vcode.sendTime + 600 > CURRENT_TIMESTAMP")
    VCode findRecentRecord(@Param("email")String email); //10分钟内是否向同一邮箱发送过验证码

    @Nullable
    VCode findByEmail(String email);
}
