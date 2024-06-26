package com.rethx.managesys.common.config;

import com.rethx.managesys.common.interceptor.JwtInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer {

//    @Override
//    public void addInterceptors(InterceptorRegistry registry) {
//        registry.addInterceptor(jwtInterceptor())
//                .addPathPatterns("/**")      //拦截所有请求,通过判断token决定是否需要登录
//                .excludePathPatterns("/login/**"
//                                    ,"/login/signup"
//                                    ,"/**/export"
//                                    ,"/**/import"
//                                    ,"/file/**");
//    }

    @Bean
    public JwtInterceptor jwtInterceptor(){
        return new JwtInterceptor();
    }
}
