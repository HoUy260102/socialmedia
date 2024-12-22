package com.javaweb.service;

import com.javaweb.entity.PostEntity;
import com.javaweb.model.dto.PostDTO;

import java.util.List;

public interface PostService {
    public void save(PostEntity post);
    public List<PostDTO> findAllByUser_IdAndOrderByDate_createdDesc(Long userId);
}
