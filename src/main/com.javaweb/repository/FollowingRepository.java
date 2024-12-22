package com.javaweb.repository;

import com.javaweb.entity.FollowingEntity;
import com.javaweb.repository.custom.CustomizedFollowingRepository;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FollowingRepository extends JpaRepository<FollowingEntity, Long>, CustomizedFollowingRepository {
    public FollowingEntity findByFollowingIdAndUser_Id(Long followingId, Long userId);
}
