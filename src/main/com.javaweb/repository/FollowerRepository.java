package com.javaweb.repository;

import com.javaweb.entity.FollowerEntity;
import com.javaweb.repository.custom.CustomizedFollowerRepository;
import com.javaweb.repository.custom.CustomizedFollowingRepository;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FollowerRepository extends JpaRepository<FollowerEntity,Long>, CustomizedFollowerRepository {
    public FollowerEntity findByFollowerIdAndUser_Id(Long followerId,Long userId);
}
