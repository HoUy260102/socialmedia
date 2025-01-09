package com.javaweb.service;

import com.javaweb.entity.UserEntity;
import com.javaweb.model.dto.UserDTO;
import com.javaweb.model.dto.UserSearchResponseDTO;
import org.springframework.data.domain.Page;

import java.util.List;

public interface UserService {
    public void saveOrUpdate(UserEntity user);
    public UserEntity findByEmail(String username);
    public UserEntity findById(Long id);
    public List<UserSearchResponseDTO> findAllByKey(String key, Long userId);
    List<UserDTO> findAllByIdIn(UserEntity userEntity);
    Page<UserDTO> findAllPaging(int page);
    Page<UserDTO> findAllPagingLike(int page, String key);
}
