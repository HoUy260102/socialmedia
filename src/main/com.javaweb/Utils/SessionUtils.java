package com.javaweb.Utils;

import com.javaweb.model.dto.MyUserDetail;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import javax.servlet.http.HttpSession;
public class SessionUtils {
    public static void setSession(HttpSession  session) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        MyUserDetail myUserDetail =(MyUserDetail) auth.getPrincipal();
        if (session.getAttribute("user")==null) session.setAttribute("user",myUserDetail.getUserDTO());
    }
}
