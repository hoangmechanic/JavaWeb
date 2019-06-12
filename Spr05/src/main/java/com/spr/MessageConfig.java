package com.spr;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;

public class MessageConfig {
	@Bean(name="messageSource")
	public MessageSource getMessagesource() {
		ReloadableResourceBundleMessageSource msg = new ReloadableResourceBundleMessageSource();
		msg.setDefaultEncoding("ut-8");
		msg.setBasename("classpath:messages");
		return msg;
	}

}
