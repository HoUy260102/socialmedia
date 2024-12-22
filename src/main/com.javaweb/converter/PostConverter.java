package com.javaweb.converter;

import com.javaweb.entity.PostEntity;
import com.javaweb.model.dto.PostDTO;
import com.javaweb.service.CommentService;
import com.javaweb.service.LikeService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class PostConverter {
    @Autowired
    private ModelMapper modelMapper;
    @Autowired
    private LikeService likeService;
    @Autowired
    private CommentService commentService;
    public PostDTO toPostDTO(PostEntity postEntity, Long userId) {
        PostDTO postDTO = modelMapper.map(postEntity, PostDTO.class);
        postDTO.setNumberOfLike(likeService.countLikeByPostId(postEntity.getId()));
        postDTO.setIsLike(likeService.findByUserIdAndPostId(userId, postDTO.getId())!=null?1L:0L);
        postDTO.setComments(commentService.findByPostIdPaging(postEntity.getId(), 0));
        return postDTO;
    }
}
