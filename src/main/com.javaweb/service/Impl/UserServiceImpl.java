package com.javaweb.service.Impl;

import com.javaweb.converter.UserSearchResponserConverter;
import com.javaweb.entity.UserEntity;
import com.javaweb.model.dto.UserSearchResponseDTO;
import com.javaweb.repository.UserRepository;
import com.javaweb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private UserSearchResponserConverter userSearchResponserConverter;
    @Override
    public void saveOrUpdate(UserEntity user) {
        userRepository.save(user);
    }
    @Override
    public UserEntity findByEmail(String username) {
        return userRepository.findByEmail(username);
    }

    @Override
    public UserEntity findById(Long id) {
        return userRepository.findById(id).get();
    }

    @Override
    public List<UserSearchResponseDTO> findAllByKey(String key, Long userId) {
        List<UserEntity> userEntities = userRepository.findAllByKey(key, userId);
        List<UserSearchResponseDTO> result = new ArrayList<UserSearchResponseDTO>();
        for (UserEntity userEntity : userEntities) {
            UserSearchResponseDTO userSearchResponseDTO = userSearchResponserConverter.toUserSearchResponser(userEntity, userId);
            result.add(userSearchResponseDTO);
        }
        return result;
    }
}
