package com.javaweb.model.dto;
import java.util.Date;

public class UserDTO {
    private Long id;
    private String email;
    private String firstName;
    private String lastName;
    private Date dateOfBirth;
    private String linkImgAvatar;
    private String work;
    private String live;
    private String phoneNumber;
    private int active;
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
