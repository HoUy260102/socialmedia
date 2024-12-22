package com.javaweb.repository.custom;

import com.javaweb.entity.UserEntity;

import java.util.List;

public interface CustomizedUserRepository {
    public List<UserEntity> findAllByKey(String key, Long userId);
}
