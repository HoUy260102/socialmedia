package com.javaweb.service;

import com.javaweb.entity.CommentEntity;
import com.javaweb.model.dto.CommentDTO;
import org.springframework.data.domain.Page;

import java.util.List;

public interface CommentService {
    void save(CommentEntity comment);
    Page<CommentDTO> findByPostIdPaging(Long postId, int page);
}
