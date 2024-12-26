package com.javaweb.api;

import com.javaweb.entity.NotificationEntity;
import com.javaweb.repository.NotificationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

@RestController
public class NotificationAPI {
    @Autowired
    private NotificationRepository notificationRepository;
    @PutMapping("/api/notification/{id}")
    public void updateNotification(@PathVariable Long id) {
        NotificationEntity notification = notificationRepository.findById(id).get();
        notification.setSeen(1L);
        notificationRepository.save(notification);
    }
    @PostMapping("/api/notification")
    @Transactional
    public void addNotification(@RequestBody NotificationEntity notification) {
        notificationRepository.save(notification);
    }
}
