package edu.nju.yummy.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationDetailsSource;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.WebAuthenticationDetails;

import javax.servlet.http.HttpServletRequest;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true, securedEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    private final MyUserDetailsService myUserDetailsService;
    private final MyAuthenticationProvider myAuthenticationProvider;
    private final AuthenticationDetailsSource<HttpServletRequest, WebAuthenticationDetails> authenticationDS;

    @Autowired
    public WebSecurityConfig(AuthenticationDetailsSource<HttpServletRequest, WebAuthenticationDetails> authenticationDS, MyAuthenticationProvider myAuthenticationProvider, MyUserDetailsService myUserDetailsService) {
        this.authenticationDS = authenticationDS;
        this.myAuthenticationProvider = myAuthenticationProvider;
        this.myUserDetailsService = myUserDetailsService;
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable();

        http.authorizeRequests()
                .antMatchers("/").permitAll()
                .antMatchers("/static/**").permitAll() //默认不拦截静态资源的url pattern （2）
                .anyRequest().authenticated().and()
                .formLogin().loginPage("/").loginProcessingUrl("/login")// 登录url请求路径
                .defaultSuccessUrl("/index").successHandler(new LoginSuccessHandle())
                .permitAll().authenticationDetailsSource(authenticationDS)
                .and().logout().permitAll()
                ;

        http.logout().logoutSuccessUrl("/"); // 退出默认跳转页面

    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(myAuthenticationProvider);
        auth.userDetailsService(myUserDetailsService).passwordEncoder(new PasswordEncoder() {
            @Override
            public String encode(CharSequence charSequence) {
                return charSequence.toString();
            }

            @Override
            public boolean matches(CharSequence charSequence, String s) {
                return s.equals(charSequence.toString());
            }
        });

    }

}
