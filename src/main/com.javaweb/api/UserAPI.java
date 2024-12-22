package com.javaweb.api;

import com.javaweb.entity.UserEntity;
import com.javaweb.model.dto.UserDTO;
import com.javaweb.model.dto.UserSearchResponseDTO;
import com.javaweb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@RestController
public class UserAPI {
//    @Autowired
//    private UserService userService;
//    @GetMapping("/api/searchuser")
//    public List<UserSearchResponseDTO> searchUser(@RequestParam("id") Long id, HttpSession session) {
//        List<UserEntity> userEntitiy = userService.findAllByIdNot(id);
//        UserDTO userDTO = (UserDTO) session.getAttribute("user");
//        List<UserSearchResponseDTO> result = new ArrayList<UserSearchResponseDTO>();
//        for (UserEntity userEntity : userEntitiy) {
//            UserSearchResponseDTO userSearchResponseDTO = new UserSearchResponseDTO();
//            userSearchResponseDTO.setId(userEntity.getId());
//            userSearchResponseDTO.setEmail(userEntity.getEmail());
//            userSearchResponseDTO.setFirstName(userEntity.getFirstName());
//            userSearchResponseDTO.setLastName(userEntity.getLastName());
//            userSearchResponseDTO.setLinkImgAvatar(userEntity.getLinkImgAvatar());
//            userSearchResponseDTO.setCheck(userEntity.getListFollower().stream().anyMatch(x -> x.getFollowerId() == userDTO.getId())==true?1l:0l);
//            result.add(userSearchResponseDTO);
//        }
//        return result ;
//    }
}
