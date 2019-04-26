package cn.qky.classgroup.config.security;

import cn.qky.classgroup.config.IgnoredUrlsProperties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.configurers.ExpressionUrlAuthorizationConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.web.cors.CorsUtils;

/**
 * @Author: Edwin
 * @Description:
 */
@Configuration
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private IgnoredUrlsProperties ignoredUrlsProperties;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        ExpressionUrlAuthorizationConfigurer<HttpSecurity>.ExpressionInterceptUrlRegistry registry = http
                .authorizeRequests();

        //除配置文件忽略路径其它所有请求都需经过认证和授权
        for (String url : ignoredUrlsProperties.getUrls()) {
            registry.antMatchers(url).permitAll();
        }

        registry.and()
                .exceptionHandling().authenticationEntryPoint(macLoginUrlAuthenticationEntryPoint())
                .and()
                .authorizeRequests()
                .requestMatchers(CorsUtils::isPreFlightRequest).permitAll()
                //任何请求
                .anyRequest()
                //需要身份认证
                .authenticated()
                .and()
                //关闭跨站请求防护
                .cors()//跨域
                .and()
                .csrf().disable()
                //前后端分离采用JWT 不需要session
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                .and()
                //添加JWT过滤器
                .addFilter(new JWTAuthenticationFilter(authenticationManager()));
    }

    @Bean
    public AuthenticationEntryPoint macLoginUrlAuthenticationEntryPoint() {
        return new MacLoginUrlAuthenticationEntryPoint("/login");
    }
}
