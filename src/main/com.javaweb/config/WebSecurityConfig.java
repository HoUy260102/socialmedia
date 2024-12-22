package com.javaweb.config;

//import com.javaweb.security.CustomSuccessHandler;
import com.javaweb.service.Impl.CustomUserDetailService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Bean
    public UserDetailsService userDetailsService() {
        return new CustomUserDetailService();
    }

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public DaoAuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        authProvider.setUserDetailsService(userDetailsService());
        authProvider.setPasswordEncoder(passwordEncoder());
        return authProvider;
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) {
        auth.authenticationProvider(authenticationProvider());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
                http.csrf().disable()
                .authorizeRequests()
                        .antMatchers("/login", "/resource/**", "/api/**","/signup", "/signupcheck").permitAll()
                        .antMatchers("/admin/**").hasAnyRole("ADMIN")
                        .antMatchers("/**").hasAnyRole("USER")
                .and()
                .formLogin().loginPage("/login").usernameParameter("username").passwordParameter("password").permitAll()
                .loginProcessingUrl("/j_spring_security_check")
                .defaultSuccessUrl("/login?mes=1")
                .failureUrl("/login?mes=0").and()
                .logout().logoutUrl("/logout").deleteCookies("JSESSIONID")
                .and().exceptionHandling().accessDeniedPage("/access-denied").and()
                .sessionManagement().maximumSessions(1).expiredUrl("/login?sessionTimeout");
    }
    @Override
    public void configure(WebSecurity web) throws Exception {
        web
                .ignoring()
                .antMatchers("/resources/**", "/assets/**");
    }
//    @Bean
//    public AuthenticationSuccessHandler myAuthenticationSuccessHandler(){
//        return new CustomSuccessHandler();
//    }
}
