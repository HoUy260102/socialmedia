package com.javaweb;
import com.javaweb.model.dto.PostCountDTO;
import com.javaweb.repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.List;

@SpringBootApplication(scanBasePackages = "com.javaweb")
public class SpringBootWebApplication {
	@Autowired
	private PostRepository postRepository;
	public static void main(String[] args) throws Exception{
        SpringApplication.run(SpringBootWebApplication.class, args);
	}
}

