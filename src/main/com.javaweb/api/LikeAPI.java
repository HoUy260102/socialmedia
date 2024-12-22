package com.javaweb.api;

import com.javaweb.entity.LikeEntity;
import com.javaweb.repository.LikeRepository;
import com.javaweb.repository.PostRepository;
import com.javaweb.repository.UserRepository;
import com.javaweb.service.LikeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.persistence.Table;

@RestController
@Transactional
public class LikeAPI {
    @Autowired
    private LikeService likeService;
    @Autowired
    private PostRepository postRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private LikeRepository likeRepository;

    @PostMapping("/api/like")
    public void createLike(@RequestParam("postId") Long postId, @RequestParam("userId") Long userId) {
        LikeEntity likeEntity = new LikeEntity();
        likeEntity.setPost(postRepository.findById(postId).get());
        likeEntity.setUser(userRepository.findById(userId).get());
        likeService.save(likeEntity);
    }
    @DeleteMapping("/api/like")
    public void deleteLike(@RequestParam("postId") Long postId, @RequestParam("userId") Long userId) {
        LikeEntity likeEntity = likeRepository.findByUser_IdAndPost_Id(userId, postId);
        likeService.delete(likeEntity);
    }
}
