package com.javaweb.controller;

import com.javaweb.converter.NotificationConverter;
import com.javaweb.entity.NotificationEntity;
import com.javaweb.model.dto.NotificationDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

@Controller
public class NotificationController {
	@Autowired
	private SimpMessagingTemplate simpMessagingTemplate;
	@Autowired
	private NotificationConverter notificationConverter;
	@MessageMapping("/notification.private")
	public NotificationDTO sendMessagePrivate(@Payload NotificationEntity notificationEntity) {
		simpMessagingTemplate.convertAndSendToUser((notificationEntity.getReceiver().getId()).toString(),"/notification", notificationConverter.toNotificationDTO(notificationEntity));
		return notificationConverter.toNotificationDTO(notificationEntity);
	}
}
