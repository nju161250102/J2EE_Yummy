package edu.nju.yummy.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpSession;

@Component
public class MyAuthenticationProvider implements AuthenticationProvider {

    private final MyUserDetailsService myUserDetailsService;

    @Autowired
    public MyAuthenticationProvider(MyUserDetailsService myUserDetailsService) {
        this.myUserDetailsService = myUserDetailsService;
    }

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String inputName = authentication.getName();
        String inputPassword = authentication.getCredentials().toString();
        MyWebAuthenticationDetails details = (MyWebAuthenticationDetails) authentication.getDetails();
        String inputType = details.getType();

        UserDetails userDetails = myUserDetailsService.loadUserByUsername(inputType.charAt(0) + inputName);

        if (! userDetails.getPassword().equals(inputPassword)) {
            throw new BadCredentialsException("密码错误");
        }

        ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        HttpSession session = attr.getRequest().getSession(true);
        session.setAttribute("id", Integer.parseInt(userDetails.getUsername()));

        return new UsernamePasswordAuthenticationToken(inputName, inputPassword, userDetails.getAuthorities());
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }
}
