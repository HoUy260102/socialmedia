package com.javaweb.controller;

import com.javaweb.converter.MessageConverter;
import com.javaweb.converter.NotificationConverter;
import com.javaweb.entity.MessageEntity;
import com.javaweb.entity.NotificationEntity;
import com.javaweb.model.dto.MessageDTO;
import com.javaweb.model.dto.NotificationDTO;
import com.javaweb.repository.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

@Controller
public class NotificationController {
	@Autowired
	private SimpMessagingTemplate simpMessagingTemplate;
	@Autowired
	private NotificationConverter notificationConverter;
	@Autowired
	private MessageConverter messageConverter;
	@Autowired
	private MessageRepository messageRepository;
	@MessageMapping("/notification.private")
	public NotificationDTO sendNotificationPrivate(@Payload NotificationEntity notificationEntity) {
		simpMessagingTemplate.convertAndSendToUser((notificationEntity.getReceiver().getId()).toString(),"/notification", notificationConverter.toNotificationDTO(notificationEntity));
		return notificationConverter.toNotificationDTO(notificationEntity);
	}
	@MessageMapping("/message.private")
	@Transactional
	public MessageDTO sendMessagePrivate(@Payload MessageEntity messageEntity) {
		messageRepository.save(messageEntity);
		simpMessagingTemplate.convertAndSendToUser((messageEntity.getReceiver().getId()).toString(),"/message", messageConverter.toMessageDTO(messageEntity));
		return messageConverter.toMessageDTO(messageEntity);
	}
}
