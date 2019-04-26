package cn.qky.classgroup.config.security;


import cn.qky.classgroup.enums.ResponseCodeEnum;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.*;
import org.springframework.security.web.util.UrlUtils;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

/**
 * @Author: Edwin
 * @Description: AuthenticationEntryPoint 用来解决匿名用户访问无权限资源时的异常
 */
public class MacLoginUrlAuthenticationEntryPoint implements AuthenticationEntryPoint,
        InitializingBean {
    private PortMapper portMapper = new PortMapperImpl();
    private PortResolver portResolver = new PortResolverImpl();
    private String loginFormUrl;
    private boolean useForward = false;


    public MacLoginUrlAuthenticationEntryPoint(String loginFormUrl) {
        Assert.notNull(loginFormUrl, "loginFormUrl cannot be null");
        this.loginFormUrl = loginFormUrl;
    }

    public void afterPropertiesSet() {
        Assert.isTrue(
                StringUtils.hasText(loginFormUrl)
                        && UrlUtils.isValidRedirectUrl(loginFormUrl),
                "loginFormUrl must be specified and must be a valid redirect URL");
        if (useForward && UrlUtils.isAbsoluteUrl(loginFormUrl)) {
            throw new IllegalArgumentException(
                    "useForward must be false if using an absolute loginFormURL");
        }
        Assert.notNull(portMapper, "portMapper must be specified");
        Assert.notNull(portResolver, "portResolver must be specified");
    }

    public void commence(HttpServletRequest request, HttpServletResponse response,
                         AuthenticationException authException) throws IOException {
        // redirect to login page. Use https if forceHttps true
        response.setContentType("application/json;charset=utf-8");
        PrintWriter out = response.getWriter();
        StringBuffer sb = new StringBuffer();
        sb.append("{\"code\":").append(ResponseCodeEnum.TOKEN_TIME_OUT.getValue())
                .append(",\"message\":\"");
        sb.append(ResponseCodeEnum.TOKEN_TIME_OUT.getName());
        sb.append("\",\"time\":");
        sb.append(new Date().getTime());
        sb.append("}");
        out.write(sb.toString());
        out.flush();
        out.close();
    }

}
