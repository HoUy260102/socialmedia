package com.javaweb.service;

import com.javaweb.entity.NotificationEntity;
import com.javaweb.model.dto.NotificationDTO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface NotificationService {
    public void save(NotificationEntity notificationEntity);
    Page<NotificationDTO> findAllByReceiver_IdOrderByIdDesc(long receiverId, int page);
}
