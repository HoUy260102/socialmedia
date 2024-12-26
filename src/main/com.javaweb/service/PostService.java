package com.javaweb.service;

import com.javaweb.entity.PostEntity;
import com.javaweb.model.dto.PostDTO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface PostService {
    public void save(PostEntity post);
    public List<PostDTO> findAllByUser_IdAndOrderByDate_createdDesc(Long userId);
    public List<PostDTO> findAllByUser_IdAndOrderByDate_createdDesc(Long userId, Long otherUserId);
    public Page<PostDTO> findAllByUser_IdInOrderByDateCreatedDesc(List<Long> ids, int page, Long userId);
    PostDTO findById(Long id, Long userId);
}
