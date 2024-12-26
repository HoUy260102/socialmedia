package com.javaweb.service.Impl;

import com.javaweb.converter.CommentConverter;
import com.javaweb.entity.CommentEntity;
import com.javaweb.model.dto.CommentDTO;
import com.javaweb.repository.CommentRepository;
import com.javaweb.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentRepository commentRepository;
    @Autowired
    private CommentConverter commentConverter;
    @Override
    @Transactional
    public void save(CommentEntity comment) {
        commentRepository.save(comment);
    }
    @Override
    public Page<CommentDTO> findByPostIdPaging(Long postId, int page) {
        Pageable pageable = PageRequest.of(page,2);
        Page<CommentEntity> commentEntities = this.commentRepository.findAllByPost_Id(postId, pageable);
        return commentEntities.map(x->commentConverter.toCommentDTO(x));
    }
}
