package com.javaweb.converter;

import com.javaweb.entity.NotificationEntity;
import com.javaweb.entity.UserEntity;
import com.javaweb.model.dto.NotificationDTO;
import com.javaweb.service.UserService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class NotificationConverter {
    @Autowired
    private ModelMapper modelMapper;
    @Autowired
    private UserService userService;
    public NotificationDTO toNotificationDTO(NotificationEntity notificationEntity) {
        NotificationDTO notificationDTO = modelMapper.map(notificationEntity, NotificationDTO.class);
        notificationDTO.setReceiverid(notificationEntity.getReceiver().getId());
        UserEntity userEntity = userService.findById(notificationEntity.getSenderid());
        notificationDTO.setFirstName(userEntity.getFirstName());
        notificationDTO.setLastName(userEntity.getLastName());
        return notificationDTO;
    }
}
