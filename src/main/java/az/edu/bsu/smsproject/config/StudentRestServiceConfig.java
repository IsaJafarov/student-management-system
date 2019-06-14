package az.edu.bsu.smsproject.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.MediaType;
import org.springframework.web.servlet.config.annotation.ContentNegotiationConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class StudentRestServiceConfig implements WebMvcConfigurer {
    @Override
    public void configureContentNegotiation(ContentNegotiationConfigurer configurer) {
        configurer.favorPathExtension(true);
        configurer.ignoreUnknownPathExtensions(true);

        configurer.favorParameter(true);
        configurer.parameterName("format");
        configurer.mediaType("json", MediaType.APPLICATION_JSON);
        configurer.mediaType("xml", MediaType.APPLICATION_XML);


        configurer.defaultContentType(MediaType.APPLICATION_JSON);
    }
}
