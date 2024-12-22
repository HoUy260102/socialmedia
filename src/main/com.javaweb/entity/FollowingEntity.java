package com.javaweb.entity;

import javax.persistence.*;

@Entity
@Table(name = "following")
public class FollowingEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "followingid")
    private Long followingId;
    @ManyToOne
    @JoinColumn(name = "user_id")
    private UserEntity user;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public UserEntity getUser() {
        return user;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }

    public Long getFollowingId() {
        return followingId;
    }

    public void setFollowingId(Long followingId) {
        this.followingId = followingId;
    }
}
