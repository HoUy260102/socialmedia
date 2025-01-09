package com.javaweb.converter;

import com.javaweb.entity.PostReportEntity;
import com.javaweb.model.dto.PostReportDTO;
import com.javaweb.service.UserService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class PostRepostConverter {
    @Autowired
    private ModelMapper modelMapper;
    @Autowired
    private UserService userService;
    public PostReportDTO toPostReportDTO(PostReportEntity postReportEntity){
        PostReportDTO postReportDTO = modelMapper.map(postReportEntity, PostReportDTO.class);
        postReportDTO.setFirstName(userService.findById(postReportEntity.getUserId()).getFirstName());
        postReportDTO.setLastName(userService.findById(postReportEntity.getUserId()).getLastName());
        return postReportDTO;
    }
}
