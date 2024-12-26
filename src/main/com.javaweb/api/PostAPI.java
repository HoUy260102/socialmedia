package com.javaweb.api;

import com.javaweb.entity.PostEntity;
import com.javaweb.entity.UserEntity;
import com.javaweb.model.dto.PostDTO;
import com.javaweb.model.dto.UserDTO;
import com.javaweb.repository.PostRepository;
import com.javaweb.service.PostService;
import com.javaweb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Date;
import java.util.List;
import java.util.stream.Collectors;

@RestController
public class PostAPI {
    @Autowired
    private PostService postService;
    @Autowired
    private UserService userService;
    @Autowired
    private PostRepository postRepository;
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
        post.setDateCreated(new Date(new java.util.Date().getTime()));
        postService.save(post);
        response.sendRedirect("/myprofile");
    }
    @GetMapping("/api/loadpost")
    public Page<PostDTO> loadPost(@RequestParam(name = "page") int page, HttpSession session) {
        UserDTO userDTO = (UserDTO) session.getAttribute("user");
        UserEntity user = userService.findById(userDTO.getId());
        List<Long> ids = user.getListFollowing().stream().map(x->x.getFollowingId()).collect(Collectors.toList());
        ids.add(user.getId());
        return postService.findAllByUser_IdInOrderByDateCreatedDesc(ids,page,user.getId());
    }
    @DeleteMapping("/api/post/{id}")
    public void deletePost(@PathVariable Long id, HttpServletRequest request) throws Exception {
        PostEntity post = postRepository.findById(id).get();
        if (post.getLinkImgPost()!=null) {
            ServletContext servletContext = request.getServletContext();
            String photoPath = servletContext.getRealPath(post.getLinkImgPost());
            Files.delete(Paths.get(photoPath));
        }
        postRepository.delete(post);
    }
}
