package com.javaweb.repository;

import com.javaweb.entity.MessageEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface MessageRepository extends JpaRepository<MessageEntity, Long> {
    List<MessageEntity> findAllBySender_IdAndReceiver_Id(Long senderId, Long receiverId);
}
