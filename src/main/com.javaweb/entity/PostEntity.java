package com.javaweb.entity;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "post")
public class PostEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "text")
    private String text;
    @Column(name = "linkimgpost")
    private String linkImgPost;
    @Column(name = "date_created")
    @DateTimeFormat(pattern ="yyyy-MM-dd")
    private Date date_created;
    @ManyToOne
    @JoinColumn(name = "user_id")
    private UserEntity user;
    @OneToMany(mappedBy = "post", fetch = FetchType.LAZY)
    private List<LikeEntity> listLike;
    @OneToMany(mappedBy = "post", fetch = FetchType.LAZY)
    private List<CommentEntity> listComment;

    public List<CommentEntity> getListComment() {
        return listComment;
    }

    public void setListComment(List<CommentEntity> listComment) {
        this.listComment = listComment;
    }

    public List<LikeEntity> getListLike() {
        return listLike;
    }

    public void setListLike(List<LikeEntity> listLike) {
        this.listLike = listLike;
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

    public void setLinkImgPost(String linkimgpost) {
        this.linkImgPost = linkimgpost;
    }

    public Date getDate_created() {
        return date_created;
    }

    public void setDate_created(Date date_created) {
        this.date_created = date_created;
    }

    public UserEntity getUser() {
        return user;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }
}
