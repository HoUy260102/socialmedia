package com.javaweb.repository;

import com.javaweb.entity.PostEntity;
import com.javaweb.repository.custom.CustomizedPostRepository;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PostRepository extends JpaRepository<PostEntity,Long>, CustomizedPostRepository {

}
