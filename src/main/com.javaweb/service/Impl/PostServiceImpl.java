package com.javaweb.service.Impl;

import com.javaweb.converter.PostConverter;
import com.javaweb.entity.PostEntity;
import com.javaweb.model.dto.PostDTO;
import com.javaweb.repository.PostRepository;
import com.javaweb.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.data.web.config.SortHandlerMethodArgumentResolverCustomizer;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class PostServiceImpl implements PostService {
    @Autowired
    private PostRepository postRepository;
    @Autowired
    private PostConverter postConverter;

    @Override
    @Transactional
    public void save(PostEntity post) {
        postRepository.save(post);
    }

    @Override
    public List<PostDTO> findAllByUser_IdAndOrderByDate_createdDesc(Long userId) {
        List<PostDTO> result = new ArrayList<>();
        for (PostEntity post : postRepository.findByUserIdAndOrderByDate(userId)) {
            result.add(postConverter.toPostDTO(post, userId));
        }
        return result;
    }

    @Override
    public List<PostDTO> findAllByUser_IdAndOrderByDate_createdDesc(Long userId, Long otherUserId) {
        List<PostDTO> result = new ArrayList<>();
        for (PostEntity post : postRepository.findByUserIdAndOrderByDate(userId)) {
            result.add(postConverter.toPostDTO(post, otherUserId));
        }
        return result;
    }

    @Override
    public Page<PostDTO> findAllByUser_IdInOrderByDateCreatedDesc(List<Long> ids, int page, Long userId) {
        Pageable pageable = PageRequest.of(page,2);
        Page<PostEntity> pages = postRepository.findAllByUser_IdInOrderByDateCreatedDesc(ids, pageable);
        Page<PostDTO> result = pages.map(post -> postConverter.toPostDTO(post, userId));
        return result;
    }

    @Override
    public PostDTO findById(Long id, Long userId) {
        return postConverter.toPostDTO(postRepository.findById(id).get(), userId);
    }
}
