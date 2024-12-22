package com.javaweb.repository;

import com.javaweb.entity.CommentEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CommentRepository extends JpaRepository<CommentEntity, Long> {
    Page<CommentEntity> findAllByPost_Id(Long postId, Pageable pageable);
}
