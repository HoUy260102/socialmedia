package com.javaweb.service;

import com.javaweb.model.dto.MessageDTO;

import java.util.List;

public interface MessageService {
    public List<MessageDTO> findAllMes(Long senderId, Long receiverId);
}
