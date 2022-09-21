package site.metacoding.red.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import site.metacoding.red.handler.HelloIntercepter;
import site.metacoding.red.handler.LoginIntercepter;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer{
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {

		registry.addInterceptor(new LoginIntercepter())
		.addPathPatterns("/s/**");
		registry.addInterceptor(new HelloIntercepter())
		.addPathPatterns("/hello/**");
		//.addPathPatterns("/admin/**")
		//.excludePathPatterns("/s/boards/**"); // /s/* => /s/boards, s/users     XXXX /s/boards/1
	}
}
