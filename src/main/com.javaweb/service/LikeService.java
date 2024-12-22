package com.javaweb.service;

import com.javaweb.entity.LikeEntity;

public interface LikeService {
    void save(LikeEntity like);
    void delete(LikeEntity like);
    LikeEntity findByUserIdAndPostId(Long userId, Long postId);
    Long countLikeByPostId(Long postId);
}
