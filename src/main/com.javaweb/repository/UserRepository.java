package com.javaweb.repository;

import com.javaweb.entity.UserEntity;
import com.javaweb.repository.custom.CustomizedUserRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserRepository extends JpaRepository<UserEntity,Long>, CustomizedUserRepository {
    public UserEntity findByEmail(String email);
    public List<UserEntity> findAllByIdNot(Long id);
    List<UserEntity> findAllByIdIn(List<Long> ids);
    Page<UserEntity> findAll(Pageable pageable);
    Page<UserEntity> findAllByEmailContainingOrFirstNameContainingOrLastNameContaining(String email, String firstName, String lastName, Pageable pageable);
}
