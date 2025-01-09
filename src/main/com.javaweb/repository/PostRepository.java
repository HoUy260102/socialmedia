package com.javaweb.repository;

import com.javaweb.entity.PostEntity;
import com.javaweb.model.dto.PostCountDTO;
import com.javaweb.repository.custom.CustomizedPostRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PostRepository extends JpaRepository<PostEntity,Long>, CustomizedPostRepository {
    public Page<PostEntity> findAllByUser_IdInOrderByDateCreatedDesc(List<Long> ids, Pageable pageable);
    @Query(nativeQuery = true)
    List<PostCountDTO> getCountPostPerMonthByYear(Long year);
}
