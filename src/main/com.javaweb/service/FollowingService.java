package com.javaweb.service;

import com.javaweb.entity.FollowingEntity;
import com.javaweb.model.dto.UserDTO;

import java.util.List;

public interface FollowingService {
    public FollowingEntity findByFollowingIdAndUser_Id(Long followingId, Long userId);
    public void save(FollowingEntity followingEntity);
    public void delete(FollowingEntity followingEntity);
    public List<UserDTO> getFollowingPage(Long userId, Long page);
    public List<UserDTO> getFollowingByKey(String key,Long userId);
}
