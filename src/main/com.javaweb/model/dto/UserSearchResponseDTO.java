package com.javaweb.model.dto;

public class UserSearchResponseDTO {
    private Long id;
    private String email;
    private String firstName;
    private String lastName;
    private String linkImgAvatar;
    private Long check;

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

    public String getLinkImgAvatar() {
        return linkImgAvatar;
    }

    public void setLinkImgAvatar(String linkImgAvatar) {
        this.linkImgAvatar = linkImgAvatar;
    }

    public Long getCheck() {
        return check;
    }

    public void setCheck(Long check) {
        this.check = check;
    }
}
