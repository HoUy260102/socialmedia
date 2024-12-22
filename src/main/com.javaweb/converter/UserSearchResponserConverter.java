package com.javaweb.converter;

import com.javaweb.entity.UserEntity;
import com.javaweb.model.dto.UserSearchResponseDTO;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UserSearchResponserConverter {
    @Autowired
    private ModelMapper modelMapper;
    public UserSearchResponseDTO toUserSearchResponser(UserEntity userEntity, Long userId) {
        UserSearchResponseDTO userSearchResponseDTO = modelMapper.map(userEntity, UserSearchResponseDTO.class);
        boolean check = userEntity.getListFollower().stream().anyMatch(x -> x.getFollowerId() == userId);
        userSearchResponseDTO.setCheck(check==true?1l:0l);
        return userSearchResponseDTO;
    }
}
