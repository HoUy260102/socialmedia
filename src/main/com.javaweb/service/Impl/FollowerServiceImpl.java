package com.javaweb.service.Impl;

import com.javaweb.converter.UserConverter;
import com.javaweb.entity.FollowerEntity;
import com.javaweb.entity.UserEntity;
import com.javaweb.model.dto.UserDTO;
import com.javaweb.repository.FollowerRepository;
import com.javaweb.service.FollowerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class FollowerServiceImpl implements FollowerService {
    @Autowired
    private FollowerRepository followerRepository;
    @Autowired
    private UserConverter userConverter;
    @Override
    public void saveOrUpdate(FollowerEntity follower) {
        followerRepository.save(follower);
    }
    @Override
    public FollowerEntity findByFollowerIdAndUser_Id(Long followerId, Long userId) {
        return followerRepository.findByFollowerIdAndUser_Id(followerId, userId);
    }

    @Override
    public void delete(FollowerEntity follower) {
        followerRepository.delete(follower);
    }

    @Override
    public List<UserDTO> getFollowerPage(Long userId, Long page) {
        List<UserEntity> listUserEntity = followerRepository.getFollowerPage(userId,page);
        return listUserEntity.stream().map(x -> userConverter.toUserDTO(x)).collect(Collectors.toList());
    }

    @Override
    public List<UserDTO> getFollowerByKey(String key, Long userId) {
        List<UserEntity> listUserEntity = followerRepository.getFollowerByKey(key,userId);
        return listUserEntity.stream().map(x -> userConverter.toUserDTO(x)).collect(Collectors.toList());
    }
}
