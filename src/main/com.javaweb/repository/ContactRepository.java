package com.javaweb.repository;

import com.javaweb.entity.ContactEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ContactRepository extends JpaRepository<ContactEntity, Long> {
    ContactEntity findByUser_IdAndContactId(Long userId, Long contactId);
}
