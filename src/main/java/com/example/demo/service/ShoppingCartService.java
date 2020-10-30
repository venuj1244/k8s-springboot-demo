package com.example.demo.service;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ShoppingCartService {
	
	@GetMapping("/details")
	public String getDetails()
	{
		return "Successfully deployed to K8s using maven build";
		
	}

}
