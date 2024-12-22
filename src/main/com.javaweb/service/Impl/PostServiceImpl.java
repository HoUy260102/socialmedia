package com.javaweb.service.Impl;

import com.javaweb.converter.PostConverter;
import com.javaweb.entity.PostEntity;
import com.javaweb.model.dto.PostDTO;
import com.javaweb.repository.PostRepository;
import com.javaweb.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.config.SortHandlerMethodArgumentResolverCustomizer;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class PostServiceImpl implements PostService {
    @Autowired
    private PostRepository postRepository;
    @Autowired
    private PostConverter postConverter;
    private SortHandlerMethodArgumentResolverCustomizer sortCustomizer;

    @Override
    @Transactional
    public void save(PostEntity post) {
        postRepository.save(post);
    }

    @Override
    public List<PostDTO> findAllByUser_IdAndOrderByDate_createdDesc(Long userId) {
        List<PostDTO> result = new ArrayList<>();
        for (PostEntity post : postRepository.findByUserIdAndOrderByDate(userId)) {
            result.add(postConverter. toPostDTO(post, userId));
        }
        return result;
    }
}
