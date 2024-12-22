package com.javaweb.model.dto;

import java.util.Date;

public class NotificationDTO {
    private Long id;
    private Long senderid;
    private Long receiverid;
    private String firstName;
    private String lastName;
    private Long type;
    private Long seen;

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

    public Long getSeen() {
        return seen;
    }

    public void setSeen(Long seen) {
        this.seen = seen;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getSenderid() {
        return senderid;
    }

    public void setSenderid(Long senderid) {
        this.senderid = senderid;
    }

    public Long getReceiverid() {
        return receiverid;
    }

    public void setReceiverid(Long receiverid) {
        this.receiverid = receiverid;
    }

    public Long getType() {
        return type;
    }

    public void setType(Long type) {
        this.type = type;
    }
}
