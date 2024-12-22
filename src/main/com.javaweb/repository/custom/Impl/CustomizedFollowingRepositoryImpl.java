package com.javaweb.repository.custom.Impl;

import com.javaweb.converter.UserConverter;
import com.javaweb.entity.UserEntity;
import com.javaweb.repository.custom.CustomizedFollowingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Repository
@Primary
public class CustomizedFollowingRepositoryImpl implements CustomizedFollowingRepository {
    @PersistenceContext
    private EntityManager entityManager;
    @Autowired
    private UserConverter userConverter;
    @Override
    public List<UserEntity> getFollowingPage(Long userId, Long page) {
        String sql = "select u.id, u.email,u.password, u.firstname, u.lastname, u.dateofbirth, u.linkimgavatar, u.work, u.live, u.phonenumber, u.active, u.role from following f\n" +
                "join user u on u.id = f.followingid\n"+
                "where f.user_id ="+userId+"\n" +
                "LIMIT "+(page-1)*2+",2";
        Query query = entityManager.createNativeQuery(sql, UserEntity.class);
        return query.getResultList();
    }

    @Override
    public List<UserEntity> getFollowingByKey(String key, Long userId) {
        String sql = "select u.id, u.email,u.password, u.firstname, u.lastname, u.dateofbirth, u.linkimgavatar, u.work, u.live, u.phonenumber, u.active, u.role from following f\n" +
                "join user u on u.id = f.followingid\n" +
                "where f.user_id = "+userId+" and (concat(u.firstname,' ',u.lastname) like N'%"+key+"%' or u.email like N'%"+key+"%')";
        Query query = entityManager.createNativeQuery(sql, UserEntity.class);
        return query.getResultList();
    }
}
