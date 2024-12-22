package com.javaweb.repository.custom;

import com.javaweb.entity.UserEntity;

import java.util.List;

public interface CustomizedFollowingRepository {
    List<UserEntity> getFollowingPage(Long userId, Long page);
    List<UserEntity> getFollowingByKey(String key, Long userId);
}
