package com.javaweb.repository.custom.Impl;

import com.javaweb.converter.UserConverter;
import com.javaweb.entity.UserEntity;
import com.javaweb.repository.custom.CustomizedFollowerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;
@Repository
@Primary
public class CustomizedFollowerRepositoryImpl implements CustomizedFollowerRepository {
    @PersistenceContext
    private EntityManager entityManager;
    @Autowired
    private UserConverter userConverter;
    @Override
    public List<UserEntity> getFollowerPage(Long userId, Long page) {
        String sql = "select u.id, u.email,u.password, u.firstname, u.lastname, u.dateofbirth, u.linkimgavatar, u.work, u.live, u.phonenumber, u.active, u.role from follower f\n" +
                "join user u on u.id = f.followerid\n"+
                "where f.user_id ="+userId+"\n" +
                "LIMIT "+(page-1)*2+",2";
        Query query = entityManager.createNativeQuery(sql, UserEntity.class);
        return query.getResultList();
    }

    @Override
    public List<UserEntity> getFollowerByKey(String key, Long userId) {
        String sql = "select u.id, u.email,u.password, u.firstname, u.lastname, u.dateofbirth, u.linkimgavatar, u.work, u.live, u.phonenumber, u.active, u.role from follower f\n" +
                "join user u on u.id = f.followerid\n" +
                "where f.user_id = "+userId+" and (concat(u.firstname,' ',u.lastname) like N'%"+key+"%' or u.email like N'%"+key+"%')";
        Query query = entityManager.createNativeQuery(sql, UserEntity.class);
        return query.getResultList();
    }
}
