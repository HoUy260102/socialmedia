package com.javaweb.service;

import com.javaweb.entity.FollowerEntity;
import com.javaweb.model.dto.UserDTO;

import java.util.List;

public interface FollowerService {
    public void saveOrUpdate(FollowerEntity follower);
    public FollowerEntity findByFollowerIdAndUser_Id(Long followerId,Long userId);
    public void delete(FollowerEntity follower);
    public List<UserDTO> getFollowerPage(Long userId, Long page);
    public List<UserDTO> getFollowerByKey(String key,Long userId);
}
