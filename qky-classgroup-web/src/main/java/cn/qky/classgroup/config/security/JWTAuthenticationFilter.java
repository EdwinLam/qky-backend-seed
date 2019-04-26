package cn.qky.classgroup.config.security;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.StrUtil;
import cn.qky.classgroup.constant.SecurityConstant;
import cn.qky.classgroup.entity.BasUser;
import cn.qky.classgroup.enums.ResponseCodeEnum;
import cn.qky.classgroup.exception.QkyException;
import cn.qky.classgroup.utils.UserInfoRedisUtils;
import com.google.gson.Gson;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jwts;
import org.springframework.context.ApplicationContext;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.annotation.Resource;
import javax.servlet.FilterChain;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

/**
 * @Author: Edwin
 * @Description:
 */
public class JWTAuthenticationFilter extends BasicAuthenticationFilter {


    public JWTAuthenticationFilter(AuthenticationManager authenticationManager) {
        super(authenticationManager);
    }

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {
        String header = request.getHeader(SecurityConstant.HEADER);
        if (StrUtil.isBlank(header)) {
            header = request.getParameter(SecurityConstant.HEADER);
        }
        if (StrUtil.isBlank(header) || !header.startsWith(SecurityConstant.TOKEN_SPLIT)) {
            chain.doFilter(request, response);
            return;
        }
        try {
            UsernamePasswordAuthenticationToken authentication = getAuthentication(request, response);
            SecurityContextHolder.getContext().setAuthentication(authentication);
        } catch (Exception e) {
            e.printStackTrace();
        }

        chain.doFilter(request, response);
    }

    private UsernamePasswordAuthenticationToken getAuthentication(HttpServletRequest request, HttpServletResponse response) {

        String token = request.getHeader(SecurityConstant.HEADER);
        if (StrUtil.isNotBlank(token)) {
            // 解析token
            Claims claims;
            try {
                claims = Jwts.parser()
                        .setSigningKey(SecurityConstant.JWT_SIGN_KEY)
                        .parseClaimsJws(token.replace(SecurityConstant.TOKEN_SPLIT, ""))
                        .getBody();

                //获取用户名
                String openId = claims.getSubject();
                if (StrUtil.isNotBlank(openId)) {
                    Long userId = Long.parseLong(claims.get("userId").toString());
                    ServletContext context = request.getServletContext();
                    ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(context);
                    UserInfoRedisUtils userInfoRedisUtils = ctx.getBean(UserInfoRedisUtils.class);
                    if(userInfoRedisUtils.getUserById(userId)!=null){
                        return new UsernamePasswordAuthenticationToken(userId, null, new ArrayList<>());
                    }
                }
            } catch (ExpiredJwtException e) {
                throw new QkyException(ResponseCodeEnum.TOKEN_TIME_OUT.getValue(), ResponseCodeEnum.TOKEN_TIME_OUT.getName());
            } catch (Exception e) {
                e.printStackTrace();
                throw new QkyException(ResponseCodeEnum.BUSINESS_ERROR.getValue(), "超时");
            }
        }
        return null;
    }

}

