package com.javaweb.model.dto;

import com.javaweb.entity.CommentEntity;
import com.javaweb.entity.UserEntity;
import org.springframework.data.domain.Page;

import java.util.Date;
import java.util.List;

public class PostDTO {
    private Long id;
    private String text;
    private String linkImgPost;
    private Date date_created;
    private Long isLike;
    private Long numberOfLike;
    private UserEntity user;
    private List<CommentDTO> comments;

    public List<CommentDTO> getComments() {
        return comments;
    }

    public void setComments(List<CommentDTO> comments) {
        this.comments = comments;
    }

    public Long getNumberOfLike() {
        return numberOfLike;
    }

    public void setNumberOfLike(Long numberOfLike) {
        this.numberOfLike = numberOfLike;
    }

    public UserEntity getUser() {
        return user;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getLinkImgPost() {
        return linkImgPost;
    }

    public void setLinkImgPost(String linkImgPost) {
        this.linkImgPost = linkImgPost;
    }

    public Date getDate_created() {
        return date_created;
    }

    public void setDate_created(Date date_created) {
        this.date_created = date_created;
    }

    public Long getIsLike() {
        return isLike;
    }

    public void setIsLike(Long isLike) {
        this.isLike = isLike;
    }
}
