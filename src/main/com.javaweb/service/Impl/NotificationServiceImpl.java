package com.javaweb.service.Impl;

import com.javaweb.converter.NotificationConverter;
import com.javaweb.entity.NotificationEntity;
import com.javaweb.model.dto.NotificationDTO;
import com.javaweb.repository.NotificationRepository;
import com.javaweb.service.NotificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class NotificationServiceImpl implements NotificationService {
    @Autowired
    private NotificationRepository notificationRepository;
    @Autowired
    private NotificationConverter notificationConverter;
    @Override
    public void save(NotificationEntity notificationEntity) {
        notificationRepository.save(notificationEntity);
    }

    @Override
    public Page<NotificationDTO> findAllByReceiver_IdOrderByIdDesc(long receiverId, int page) {
        Pageable pageable = PageRequest.of(page,10);
        Page<NotificationEntity> notifications = notificationRepository.findAllByReceiver_IdOrderByIdDesc(receiverId, pageable);
        return notifications.map(x->notificationConverter.toNotificationDTO(x));
    }
}
