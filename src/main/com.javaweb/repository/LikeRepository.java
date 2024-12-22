package com.javaweb.repository;

import com.javaweb.entity.LikeEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LikeRepository extends JpaRepository<LikeEntity,Long> {
    LikeEntity findByUser_IdAndPost_Id(Long userId, Long postId);
    Long countByPost_Id(Long postId);
}
