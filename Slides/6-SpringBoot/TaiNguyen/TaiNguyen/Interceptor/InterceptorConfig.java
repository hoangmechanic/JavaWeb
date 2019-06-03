package com.nghiemn;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.nghiemn.interceptor.AuthInterceptor;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer {

	@Override
	public void addInterceptors(
			InterceptorRegistry registry) {
		registry.addInterceptor(
				new AuthInterceptor())
				.addPathPatterns("/order/**", 
						"/account/logoff", 
						"/account/change", 
						"account/edit");
	}
}

