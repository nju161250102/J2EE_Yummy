package edu.nju.yummy.security;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Set;

class LoginSuccessHandle implements AuthenticationSuccessHandler {

    public void onAuthenticationSuccess(HttpServletRequest request,
                                        HttpServletResponse response, Authentication authentication) throws IOException, ServletException {

        Set<String> roles = AuthorityUtils.authorityListToSet(authentication.getAuthorities());
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
        if (roles.contains("USER")) {
            response.sendRedirect(basePath + "user/index");
        } else if (roles.contains("RESTAURANT")) {
            response.sendRedirect(basePath + "restaurant/index");
        } else {
            response.sendRedirect(basePath + "admin/index");
        }
    }
}
