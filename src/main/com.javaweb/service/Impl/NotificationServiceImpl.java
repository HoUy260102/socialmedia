package com.javaweb.service.Impl;

import com.javaweb.entity.NotificationEntity;
import com.javaweb.repository.NotificationRepository;
import com.javaweb.service.NotificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NotificationServiceImpl implements NotificationService {
    @Autowired
    private NotificationRepository notificationRepository;

    @Override
    public void save(NotificationEntity notificationEntity) {
        notificationRepository.save(notificationEntity);
    }
}
