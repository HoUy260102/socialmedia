package com.javaweb.service.Impl;

import com.javaweb.entity.MessageEntity;
import com.javaweb.model.dto.MessageDTO;
import com.javaweb.repository.MessageRepository;
import com.javaweb.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class MessageServiceImpl implements MessageService {
    @Autowired
    private MessageRepository messageRepository;

    @Override
    public List<MessageDTO> findAllMes(Long senderId, Long receiverId) {
        List<MessageEntity> lisender = messageRepository.findAllBySender_IdAndReceiver_Id(senderId, receiverId);
        List<MessageEntity> lisreceiver = messageRepository.findAllBySender_IdAndReceiver_Id(receiverId, senderId);
        for (MessageEntity me : lisreceiver) {
            lisender.add(me);
        }
        List<MessageEntity> li = lisender.stream().sorted((o1, o2) -> o1.getDateCreated().compareTo(o2.getDateCreated())).collect(Collectors.toList());
        List<MessageDTO> result = new ArrayList<>();
        for (MessageEntity me : li) {
            MessageDTO mesDTO = new MessageDTO();
            mesDTO.setText(me.getText());
            if (me.getSender().getId()!=senderId) mesDTO.setLinkImgAvatarReceiver(me.getSender().getLinkImgAvatar());
            result.add( mesDTO );
        }
        return result;
    }
}
