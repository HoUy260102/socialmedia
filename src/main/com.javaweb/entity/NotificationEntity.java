package com.javaweb.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "notification")
public class NotificationEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "senderid")
    private Long senderid;
    @Column(name = "type")
    private Long type;
    @Column(name = "seen")
    private Long seen;
    @ManyToOne
    @JoinColumn(name = "receiverid")
    private UserEntity receiver;

    public Long getSeen() {
        return seen;
    }

    public void setSeen(Long seen) {
        this.seen = seen;
    }

    public UserEntity getReceiver() {
        return receiver;
    }

    public void setReceiver(UserEntity receiver) {
        this.receiver = receiver;
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

    public Long getType() {
        return type;
    }

    public void setType(Long type) {
        this.type = type;
    }
}
