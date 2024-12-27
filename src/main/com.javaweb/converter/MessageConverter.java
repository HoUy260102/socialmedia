package com.javaweb.converter;

import com.javaweb.entity.MessageEntity;
import com.javaweb.model.dto.MessageDTO;
import com.javaweb.service.UserService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MessageConverter {
    @Autowired
    private ModelMapper modelMapper;
    @Autowired
    private UserService userService;
    public MessageDTO toMessageDTO(MessageEntity message) {
        MessageDTO messageDTO = modelMapper.map(message, MessageDTO.class);
        messageDTO.setLinkImgAvatarReceiver(userService.findById(message.getSender().getId()).getLinkImgAvatar());
        return messageDTO;
    }
}
