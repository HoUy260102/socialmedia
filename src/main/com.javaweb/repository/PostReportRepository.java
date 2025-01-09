package com.javaweb.repository;

import com.javaweb.entity.PostReportEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PostReportRepository extends JpaRepository<PostReportEntity, Long> {
    void deleteAllByPostId(Long postId);
    void deleteById(Long id);

}
