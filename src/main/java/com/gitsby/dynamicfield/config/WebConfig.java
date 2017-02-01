package com.gitsby.dynamicfield.config;

import com.fasterxml.jackson.databind.SerializationFeature;
import org.springframework.beans.factory.config.PropertiesFactoryBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.Jackson2ObjectMapperBuilder;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import java.util.List;

/**
 * Created by Kasyanov Maxim on 1/28/2017.
 */
@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.gitsby.dynamicfield.*")
public class WebConfig extends WebMvcConfigurerAdapter {

    private static final String APPLICATION_PROPERTIES = "application.properties";
    private static final String RESOURCES_MAPPING = "/resources/**";
    private static final String RESOURCES = "/resources/";

    private MappingJackson2HttpMessageConverter jacksonMessageConverter() {
        Jackson2ObjectMapperBuilder builder = new Jackson2ObjectMapperBuilder()
                .featuresToDisable(SerializationFeature.FAIL_ON_EMPTY_BEANS,
                        SerializationFeature.WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS)
                .featuresToEnable(SerializationFeature.INDENT_OUTPUT);
        builder.indentOutput(true);
        return new MappingJackson2HttpMessageConverter(builder.build());
    }

    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
        converters.add(jacksonMessageConverter());
        super.configureMessageConverters(converters);
    }

    @Bean
    public PropertiesFactoryBean mapper() {
        PropertiesFactoryBean bean = new PropertiesFactoryBean();
        bean.setLocation(new ClassPathResource(APPLICATION_PROPERTIES));
        return bean;
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler(RESOURCES_MAPPING).addResourceLocations(RESOURCES);
    }
}
