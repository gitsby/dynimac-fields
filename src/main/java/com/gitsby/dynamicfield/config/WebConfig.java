package com.gitsby.dynamicfield.config;

import org.springframework.beans.factory.config.PropertiesFactoryBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * Created by Kasyanov Maxim on 1/28/2017.
 */
@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.gitsby.dynamicfield.*")
public class WebConfig extends WebMvcConfigurerAdapter {

    private static final String APPLICATION_PROPERTIES = "application.properties";

    @Bean
    public PropertiesFactoryBean mapper() {
        PropertiesFactoryBean bean = new PropertiesFactoryBean();
        bean.setLocation(new ClassPathResource(APPLICATION_PROPERTIES));
        return bean;
    }
}
