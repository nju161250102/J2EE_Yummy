package edu.nju.yummy.security;

import lombok.Getter;
import org.springframework.security.web.authentication.WebAuthenticationDetails;

import javax.servlet.http.HttpServletRequest;

public class MyWebAuthenticationDetails extends WebAuthenticationDetails {

    @Getter
    private final String type;

    public MyWebAuthenticationDetails(HttpServletRequest request) {
        super(request);
        type = request.getParameter("type");
    }
}
