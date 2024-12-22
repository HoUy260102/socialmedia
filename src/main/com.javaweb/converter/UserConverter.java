package com.javaweb.converter;

import com.javaweb.entity.UserEntity;
import com.javaweb.model.dto.UserDTO;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UserConverter {
    @Autowired
    private ModelMapper modelMapper;
    public UserDTO toUserDTO(UserEntity userEntity) {
        UserDTO userDTO = modelMapper.map(userEntity, UserDTO.class);
        return userDTO;
    }
}
