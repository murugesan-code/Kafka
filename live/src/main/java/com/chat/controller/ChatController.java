package com.chat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.chat.service.ChatProducer;
@RestController
@RequestMapping("/api/chat")
public class ChatController {

    @Autowired
    private ChatProducer chatProducer;

    @PostMapping("/send")
    public String sendMessage(@RequestParam("message") String message) {
	chatProducer.sendMessage(message);
	return "Message sent!";
    }
}
