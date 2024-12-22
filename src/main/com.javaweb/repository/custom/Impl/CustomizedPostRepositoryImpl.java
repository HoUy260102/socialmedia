package com.javaweb.repository.custom.Impl;

import com.javaweb.entity.PostEntity;
import com.javaweb.repository.custom.CustomizedPostRepository;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.Collections;
import java.util.List;

@Repository
@Primary
public class CustomizedPostRepositoryImpl implements CustomizedPostRepository {
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public List<PostEntity> findByUserIdAndOrderByDate(Long userId) {
        String sql = "select * from post\n" +
                "where user_id ="+ userId +"\n" +
                "order by date_created desc";
        Query query = entityManager.createNativeQuery(sql, PostEntity.class);
        return query.getResultList();
    }
}
