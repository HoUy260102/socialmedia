package com.javaweb.entity;

import javax.persistence.*;

@Entity
@Table(name = "follower")
public class FollowerEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "followerid")
    private Long followerId;
    @ManyToOne
    @JoinColumn(name = "user_id")
    private UserEntity user;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getFollowerId() {
        return followerId;
    }

    public void setFollowerId(Long followerId) {
        this.followerId = followerId;
    }

    public UserEntity getUser() {
        return user;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }
}
