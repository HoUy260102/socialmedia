package com.javaweb.service.Impl;

import com.javaweb.converter.UserConverter;
import com.javaweb.entity.UserEntity;
import com.javaweb.model.dto.MyUserDetail;
import com.javaweb.model.dto.UserDTO;
import com.javaweb.service.UserService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CustomUserDetailService implements UserDetailsService {

    @Autowired
    private UserService userService;
    @Autowired
    private UserConverter userConverter;
    @Override
    public UserDetails loadUserByUsername(String name) throws UsernameNotFoundException {
        UserEntity userEntity = userService.findByEmail(name);
        UserDTO userDTO = userConverter.toUserDTO(userEntity);
        if(userEntity == null){
            throw new UsernameNotFoundException("Username not found");
        }
        List<GrantedAuthority> authorities = new ArrayList<>();
        authorities.add(new SimpleGrantedAuthority("ROLE_"+userDTO.getRole()));
        MyUserDetail myUserDetail = new MyUserDetail(name,userEntity.getPassword(),true,true,true,true,authorities);
        BeanUtils.copyProperties(userDTO, myUserDetail);
        myUserDetail.setUserDTO(userDTO);
        return myUserDetail;
    }
}
