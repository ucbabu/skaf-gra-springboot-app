package com.ucb.skafgraspringbootapp;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")
public class HelloWorldControllder {
	
	@GetMapping
	public String hello() {
		
		return "Hello World Watch dogs redeploy hello1 Working redeploy now awesome";
	}
	

}
