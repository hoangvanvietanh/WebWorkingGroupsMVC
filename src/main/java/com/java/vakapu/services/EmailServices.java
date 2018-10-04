package com.java.vakapu.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailServices {

	@Autowired
    public JavaMailSender emailSender;
 
    public void sendSimpleMessage(String email, String code) {

    	System.out.println("Email::::::::::::::::Send:" + email +"Code::::"+code);
		System.out.println("Sending text...");
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom("vakapuWeb@gmail.com");
		message.setTo(email);
		message.setSubject("Active your account");
		message.setText( "http://localhost:8080/time-is-gold/sign-up/create-password" +"\n" + "This is your code: "+ code);
		emailSender.send(message);
		System.out.println("Sending text done!");
    }
}
