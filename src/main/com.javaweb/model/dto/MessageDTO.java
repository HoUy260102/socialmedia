package com.javaweb.model.dto;

public class MessageDTO {
    private Long id;
    private String text;
    private String linkImgAvatarReceiver;

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

    public String getLinkImgAvatarReceiver() {
        return linkImgAvatarReceiver;
    }

    public void setLinkImgAvatarReceiver(String linkImgAvatarReceiver) {
        this.linkImgAvatarReceiver = linkImgAvatarReceiver;
    }
}
