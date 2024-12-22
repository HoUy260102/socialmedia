package com.javaweb.service.Impl;

import com.javaweb.converter.UserConverter;
import com.javaweb.entity.FollowingEntity;
import com.javaweb.entity.UserEntity;
import com.javaweb.model.dto.UserDTO;
import com.javaweb.repository.FollowingRepository;
import com.javaweb.service.FollowingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class FollowingServiceImpl implements FollowingService {
    @Autowired
    private FollowingRepository followingRepository;
    @Autowired
    private UserConverter userConverter;
    @Override
    public FollowingEntity findByFollowingIdAndUser_Id(Long followingId, Long userId) {
        return followingRepository.findByFollowingIdAndUser_Id(followingId, userId);
    }

    @Override
    public void save(FollowingEntity followingEntity) {
        followingRepository.save(followingEntity);
    }

    @Override
    public void delete(FollowingEntity followingEntity) {
        followingRepository.delete(followingEntity);
    }

    @Override
    public List<UserDTO> getFollowingPage(Long userId, Long page) {
        List<UserEntity> listUserEntity = followingRepository.getFollowingPage(userId,page);
        return listUserEntity.stream().map(x -> userConverter.toUserDTO(x)).collect(Collectors.toList());
    }

    @Override
    public List<UserDTO> getFollowingByKey(String key, Long userId) {
        List<UserEntity> listUserEntity = followingRepository.getFollowingByKey(key,userId);
        return listUserEntity.stream().map(x -> userConverter.toUserDTO(x)).collect(Collectors.toList());
    }
}
