package com.javaweb.service;

import com.javaweb.model.dto.PostReportDTO;

import java.util.List;

public interface PostReportService {
    List<PostReportDTO> findAll();
}
