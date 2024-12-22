package com.javaweb.api;

import com.javaweb.entity.PostEntity;
import com.javaweb.model.dto.UserDTO;
import com.javaweb.service.PostService;
import com.javaweb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.sql.Date;

@RestController
public class PostAPI {
    @Autowired
    private PostService postService;
    @Autowired
    private UserService userService;
    @PostMapping("/api/post")
    public void post(@RequestParam(name = "postphoto", required = false) MultipartFile photo,
                     @RequestParam(name = "text", required = false) String text, HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception{
        PostEntity post = new PostEntity();
        UserDTO user = (UserDTO) session.getAttribute("user");
        post.setUser(userService.findById(user.getId()));
        if (photo!=null&&photo.getOriginalFilename()!="") {
            try {
                ServletContext servletContext = request.getServletContext();
                String photoPath = servletContext.getRealPath("/assets/images/posts/"+photo.getOriginalFilename());
                photo.transferTo(new File(photoPath));
                post.setLinkImgPost("/assets/images/posts/"+photo.getOriginalFilename());
            }catch (Exception e) {
                e.printStackTrace();
            }
        }
        post.setText(text);
        post.setDate_created(new Date(new java.util.Date().getTime()));
        postService.save(post);
        response.sendRedirect("/myprofile");
    }
}
