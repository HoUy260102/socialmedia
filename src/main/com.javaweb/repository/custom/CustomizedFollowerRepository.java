package com.javaweb.repository.custom;

import com.javaweb.entity.UserEntity;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface CustomizedFollowerRepository {
    List<UserEntity> getFollowerPage(Long userId, Long page);
    List<UserEntity> getFollowerByKey(String key, Long userId);
}
