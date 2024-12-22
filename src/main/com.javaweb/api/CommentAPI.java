package com.javaweb.api;

import com.javaweb.entity.CommentEntity;
import com.javaweb.model.dto.CommentDTO;
import com.javaweb.repository.CommentRepository;
import com.javaweb.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class CommentAPI {
    @Autowired
    private CommentService commentService;
    @GetMapping("/api/comment")
    public List<CommentDTO> getComment(@RequestParam(name = "postId") Long postId, @RequestParam(name = "page") int page) {
        return commentService.findByPostIdPaging(postId,page);
    }
}
