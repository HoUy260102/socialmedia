package com.javaweb.entity;

import com.javaweb.model.dto.PostCountDTO;
import com.javaweb.model.dto.SocialTrafficDTO;

import javax.persistence.*;
import java.util.Date;
@NamedNativeQuery(name = "SocialTrafficEntity.findStatic",
        query = "SELECT m.month as month, ifnull(te.count,0) as count " +
                "                    FROM months as m  " +
                "                    left join ( " +
                "                            select month(s.day) as month, count(s.user_id) as count " +
                "                            FROM socialtraffic as s   " +
                "                            where year(s.day)=?1  " +
                "                            group by month(s.day) " +
                "                        ) as te on m.month=te.month",
        resultSetMapping = "Mapping.SocialTrafficDTO")
@SqlResultSetMapping(name = "Mapping.SocialTrafficDTO",
        classes = @ConstructorResult(targetClass = SocialTrafficDTO.class,
                columns = {@ColumnResult(name = "month", type = Long.class),
                        @ColumnResult(name = "count", type = Long.class)}))
@Entity
@Table(name = "socialtraffic")
public class SocialTrafficEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "user_id")
    private Long userId;
    @Column(name = "day")
    private Date day;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Date getDay() {
        return day;
    }

    public void setDay(Date day) {
        this.day = day;
    }
}
