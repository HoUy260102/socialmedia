package com.javaweb.repository;

import com.javaweb.entity.NotificationEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NotificationRepository extends JpaRepository<NotificationEntity, Long> {
    Page<NotificationEntity> findAllByReceiver_IdOrderByIdDesc(long receiverId, Pageable pageable);
    int countAllByReceiver_IdAndSeen(Long receiverId, Long seen);
}
