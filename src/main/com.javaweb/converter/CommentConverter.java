package com.javaweb.converter;

import com.javaweb.entity.CommentEntity;
import com.javaweb.model.dto.CommentDTO;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CommentConverter {
    @Autowired
    private ModelMapper modelMapper;
    public CommentDTO toCommentDTO(CommentEntity commentEntity) {
        CommentDTO commentDTO = modelMapper.map(commentEntity, CommentDTO.class);
        commentDTO.setFirstName(commentEntity.getUser().getFirstName());
        commentDTO.setLastName(commentEntity.getUser().getLastName());
        commentDTO.setLinkImgAvatar(commentEntity.getUser().getLinkImgAvatar());
        return commentDTO;
    }
}
