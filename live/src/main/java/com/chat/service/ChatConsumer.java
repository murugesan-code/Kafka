package com.chat.service;

import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Service;

@Service
public class ChatConsumer {
    @KafkaListener(topics = "kafka-chat", groupId = "chat-group")
    public void consumeMessage(String message) {
    System.out.println("Received: " + message);
    }
}
