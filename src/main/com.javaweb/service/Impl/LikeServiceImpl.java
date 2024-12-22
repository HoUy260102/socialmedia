package com.javaweb.service.Impl;

import com.javaweb.entity.LikeEntity;
import com.javaweb.repository.LikeRepository;
import com.javaweb.service.LikeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LikeServiceImpl implements LikeService {
    @Autowired
    private LikeRepository likeRepository;
    @Override
    public void save(LikeEntity like) {
        likeRepository.save(like);
    }

    @Override
    public void delete(LikeEntity like) {
        likeRepository.delete(like);
    }

    @Override
    public LikeEntity findByUserIdAndPostId(Long userId, Long postId) {
        return likeRepository.findByUser_IdAndPost_Id(userId,postId);
    }

    @Override
    public Long countLikeByPostId(Long postId) {
        return likeRepository.countByPost_Id(postId);
    }
}
