package com.javaweb.entity;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "user")
public class UserEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "email")
    private String email;
    @Column(name = "password")
    private String password;
    @Column(name = "firstname")
    private String firstName;
    @Column(name = "lastname")
    private String lastName;
    @Column(name = "dateofbirth")
    @DateTimeFormat(pattern ="yyyy-MM-dd")
    private Date dateOfBirth;
    @Column(name = "linkimgavatar")
    private String linkImgAvatar;
    @Column(name = "work")
    private String work;
    @Column(name = "live")
    private String live;
    @Column(name = "phonenumber")
    private String phoneNumber;
    @Column(name = "active")
    private int active;
    @Column(name = "role")
    private String role;
    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    List<FollowingEntity> listFollowing;
    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    List<FollowerEntity> listFollower;
    @OneToMany(mappedBy = "receiver", fetch = FetchType.LAZY)
    List<NotificationEntity> listNotification;
    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    List<PostEntity> listPost ;
    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    List<LikeEntity> listLike ;
    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    List<CommentEntity> listComment;
    @OneToMany(mappedBy = "receiver", fetch = FetchType.LAZY)
    List<MessageEntity> listMesReceiver;
    @OneToMany(mappedBy = "sender", fetch = FetchType.LAZY)
    List<MessageEntity> listMesSender;
    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    List<ContactEntity> listContact;

    public List<ContactEntity> getListContact() {
        return listContact;
    }

    public void setListContact(List<ContactEntity> listContact) {
        this.listContact = listContact;
    }

    public List<MessageEntity> getListMesReceiver() {
        return listMesReceiver;
    }

    public void setListMesReceiver(List<MessageEntity> listMesReceiver) {
        this.listMesReceiver = listMesReceiver;
    }

    public List<MessageEntity> getListMesSender() {
        return listMesSender;
    }

    public void setListMesSender(List<MessageEntity> listMesSender) {
        this.listMesSender = listMesSender;
    }

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

    public List<PostEntity> getListPost() {
        return listPost;
    }

    public void setListPost(List<PostEntity> listPost) {
        this.listPost = listPost;
    }

    public List<NotificationEntity> getListNotification() {
        return listNotification;
    }

    public void setListNotification(List<NotificationEntity> listNotification) {
        this.listNotification = listNotification;
    }

    public List<FollowerEntity> getListFollower() {
        return listFollower;
    }
    public void setListFollower(List<FollowerEntity> listFollower) {
        this.listFollower = listFollower;
    }

    public List<FollowingEntity> getListFollowing() {
        return listFollowing;
    }

    public void setListFollowing(List<FollowingEntity> listFollowing) {
        this.listFollowing = listFollowing;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getLinkImgAvatar() {
        return linkImgAvatar;
    }

    public void setLinkImgAvatar(String linkImgAvatar) {
        this.linkImgAvatar = linkImgAvatar;
    }

    public String getWork() {
        return work;
    }

    public void setWork(String work) {
        this.work = work;
    }

    public String getLive() {
        return live;
    }

    public void setLive(String live) {
        this.live = live;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }
}
