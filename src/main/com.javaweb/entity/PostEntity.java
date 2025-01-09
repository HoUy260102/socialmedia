package com.javaweb.entity;

import com.javaweb.model.dto.PostCountDTO;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;
import java.util.List;
@NamedNativeQuery(name = "PostEntity.getCountPostPerMonthByYear",
        query = "SELECT m.month as month, ifnull(te.count,0) as count " +
                "    FROM months as m  " +
                "    left join ( " +
                "            select month(p.date_created) as month, count(p.id) as count " +
                "            FROM post as p   " +
                "            where year(p.date_created)=?1   " +
                "            group by month(p.date_created) " +
                "        ) as te on m.month=te.month",
        resultSetMapping = "Mapping.PostCountDTO")
@SqlResultSetMapping(name = "Mapping.PostCountDTO",
        classes = @ConstructorResult(targetClass = PostCountDTO.class,
                columns = {@ColumnResult(name = "month", type = Long.class),
                        @ColumnResult(name = "count", type = Long.class)}))
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
    private Date dateCreated;
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

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date date_created) {
        this.dateCreated = date_created;
    }

    public UserEntity getUser() {
        return user;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }
}
