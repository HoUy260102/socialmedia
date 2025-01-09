package com.javaweb.repository;

import com.javaweb.entity.SocialTrafficEntity;
import com.javaweb.model.dto.SocialTrafficDTO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Date;
import java.util.List;

public interface SocialTrafficRepository extends JpaRepository<SocialTrafficEntity, Long> {
    @Query(nativeQuery = true)
    List<SocialTrafficDTO> findStatic(Long year);
    SocialTrafficEntity findByUserIdAndDay(Long userId, Date day);
}
