package az.edu.bsu.smsproject;

import az.edu.bsu.smsproject.property.FileStorageProperties;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

@SpringBootApplication

@EnableConfigurationProperties({ FileStorageProperties.class })

public class SmsProjectApplication {
    public static void main(String[] args) {
        SpringApplication.run(SmsProjectApplication.class, args);
    }

}
