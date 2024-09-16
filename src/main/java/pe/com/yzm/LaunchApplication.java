package pe.com.yzm;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class LaunchApplication {

	public static void main(String[] args) {
		SpringApplication.run(LaunchApplication.class, args);
	}

}
