package edu.nju.yummy.service.impl;

import edu.nju.yummy.service.VCodeService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest
public class VCodeServiceImplTest {

    @Autowired
    private VCodeService vCodeService;

    @Test
    public void sendCode() {
        System.out.println(vCodeService.sendCode("417900932@qq.com"));
    }
}