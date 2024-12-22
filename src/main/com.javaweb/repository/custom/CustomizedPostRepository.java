package com.javaweb.repository.custom;

import com.javaweb.entity.PostEntity;

import java.util.List;

public interface CustomizedPostRepository {
    List<PostEntity> findByUserIdAndOrderByDate(Long userId);
}
