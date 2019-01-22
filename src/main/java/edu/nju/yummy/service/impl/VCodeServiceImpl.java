package edu.nju.yummy.service.impl;

import com.alibaba.fastjson.JSONObject;
import edu.nju.yummy.entity.VCode;
import edu.nju.yummy.model.ResultModel;
import edu.nju.yummy.repository.UserRepository;
import edu.nju.yummy.repository.VCodeRepository;
import edu.nju.yummy.service.VCodeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
public class VCodeServiceImpl implements VCodeService {

    private final UserRepository userRepository;
    private final VCodeRepository vCodeRepository;
    private final JavaMailSender mailSender;
    @Value("${spring.mail.username}")
    private String from;

    @Autowired
    public VCodeServiceImpl(UserRepository userRepository, VCodeRepository vCodeRepository, JavaMailSender mailSender) {
        this.userRepository = userRepository;
        this.vCodeRepository = vCodeRepository;
        this.mailSender = mailSender;
    }

    @Override
    public ResultModel sendCode(String email) {
        ResultModel result = new ResultModel();

        // 检验是否为正确格式的邮箱地址
        if (!checkEmail(email)) {
            result.setInfo("邮箱格式不正确");
            return result;
        }
        if (userRepository.findByEmail(email) != null) {
            result.setInfo("邮箱已被注册");
            return result;
        }

        // 1分钟内是否已经发送过验证码
        VCode vCode = vCodeRepository.findByEmail(email);
        if (vCode == null || !atInterval(vCode.getSendTime())) {
            // 没有发送过验证码 或 已经超出1分钟
            // 生成验证码
            int randomNum = (int) (Math.random() * 1000000);
            String randomStr = String.format("%06d", randomNum);
            // 发送
            try {
                sendEmail(email, randomStr);
                result.setSuccess(true);
                result.setInfo("验证码已成功发送");
                // 保存发送记录
                if (vCode == null) {
                    vCode = new VCode();
                    vCode.setEmail(email);
                    vCode.setNum(randomStr);
                } else {
                    vCode.setSendTime(new Timestamp(System.currentTimeMillis()));
                }
                vCodeRepository.save(vCode);
            } catch (Exception e) {
                e.printStackTrace();
                // 发送遇到问题
                result.setInfo("验证码发送出现错误");
            }
        } else {
            // 1分钟之内发送过验证码
            result.setInfo("验证码发送过于频繁，请稍后再试");
        }
        return result;
    }

    private boolean atInterval(Timestamp time) {
        Long seconds = System.currentTimeMillis() - time.getTime();
        Long interval = 60000L;  // 设置间隔为1分钟
        return seconds > 0 && seconds <= interval;
    }

    private void sendEmail(String email, String code) throws Exception{
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom(from);
        message.setTo(email);
        message.setSubject("[Yummy 订餐平台] 验证码");
        message.setText("Yummy 已收到您的会员注册申请，下面是为您生成的验证码：\n\n" +
                code + "\n\n" +
                "请在注册页面输入此验证码。");
        mailSender.send(message);
    }

    private boolean checkEmail(String email) {
        String check = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
        Pattern regex = Pattern.compile(check);
        Matcher matcher = regex.matcher(email);
        return matcher.matches();
    }
}
