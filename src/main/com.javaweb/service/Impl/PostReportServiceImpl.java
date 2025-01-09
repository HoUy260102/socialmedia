package com.javaweb.service.Impl;

import com.javaweb.converter.PostRepostConverter;
import com.javaweb.model.dto.PostReportDTO;
import com.javaweb.repository.PostReportRepository;
import com.javaweb.service.PostReportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class PostReportServiceImpl implements PostReportService {
    @Autowired
    private PostReportRepository postReportRepository;
    @Autowired
    private PostRepostConverter postRepostConverter;
    @Override
    public List<PostReportDTO> findAll() {
        return postReportRepository.findAll().stream().map(x->postRepostConverter.toPostReportDTO(x)).collect(Collectors.toList());
    }
}
