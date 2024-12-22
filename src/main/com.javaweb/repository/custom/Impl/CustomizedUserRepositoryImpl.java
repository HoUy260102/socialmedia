package com.javaweb.repository.custom.Impl;

import com.javaweb.entity.UserEntity;
import com.javaweb.repository.custom.CustomizedUserRepository;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.Collections;
import java.util.List;

@Repository
@Primary
public class CustomizedUserRepositoryImpl implements CustomizedUserRepository {
    @PersistenceContext
    private EntityManager entityManager;
    @Override
    public List<UserEntity> findAllByKey(String key, Long userId) {
        String sql = "select u.id, u.email,u.password, u.firstname, u.lastname, u.dateofbirth, u.linkimgavatar, u.work, u.live, u.phonenumber, u.active, u.role from user u \n" +
                "where u.id != "+userId+" and (concat(u.firstname,' ',u.lastname) like N'%"+key+"%' or u.email like N'%"+key+"%')";
        Query query = entityManager.createNativeQuery(sql, UserEntity.class);
        return query.getResultList();
    }
}
