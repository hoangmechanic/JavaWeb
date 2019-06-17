package com.spr;

import java.util.Locale;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;

@Configuration
public class I18NConfig implements WebMvcConfigurer {
	@Bean("MessageSource")
	public MessageSource getMessageSource() {
		ReloadableResourceBundleMessageSource ms = new ReloadableResourceBundleMessageSource();
		ms.setDefaultEncoding("utf-8");
		ms.setBasename("classpath:i18n/global");
		return ms;
	}

	@Bean("LocaleResolver")
	public LocaleResolver getLocaleResolver() {
		CookieLocaleResolver lr = new CookieLocaleResolver();
		lr.setCookiePath("/");
		lr.setCookieMaxAge(30*60);
		lr.setDefaultLocale(new Locale("vi"));
		return lr;
	}

	@Bean
	public void addInterceptors(InterceptorRegistry registry) {
		
	}
	
}
