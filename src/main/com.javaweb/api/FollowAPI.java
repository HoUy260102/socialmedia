package com.javaweb.api;

import com.javaweb.entity.FollowerEntity;
import com.javaweb.entity.FollowingEntity;
import com.javaweb.entity.UserEntity;
import com.javaweb.model.dto.UserDTO;
import com.javaweb.service.FollowerService;
import com.javaweb.service.FollowingService;
import com.javaweb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@RestController
public class FollowAPI {
    @Autowired
    private FollowingService followingService;
    @Autowired
    private FollowerService followerService;
    @Autowired
    private UserService userService;
    @PostMapping("/api/following/{followingId}")
    public void addFollowing(@PathVariable Long followingId, HttpSession session, HttpServletResponse response) throws Exception{
        FollowingEntity followingEntity = new FollowingEntity();
        FollowerEntity followerEntity = new FollowerEntity();
        followingEntity.setFollowingId(followingId);
        followingEntity.setUser(userService.findById(((UserDTO)session.getAttribute("user")).getId()));
        followerEntity.setFollowerId(((UserDTO)session.getAttribute("user")).getId());
        followerEntity.setUser(userService.findById(followingId));
        followingService.save(followingEntity);
        followerService.saveOrUpdate(followerEntity);
    }
    @DeleteMapping("/api/following/{followingId}")
    public void deleteFollowing(@PathVariable Long followingId, HttpSession session, HttpServletResponse response) throws Exception{
        UserDTO user = (UserDTO)session.getAttribute("user");
        FollowingEntity followingEntity = followingService.findByFollowingIdAndUser_Id(followingId, user.getId());
        FollowerEntity followerEntity = followerService.findByFollowerIdAndUser_Id(user.getId(), followingId);
        if (followingEntity != null) {
            followingService.delete(followingEntity);
        }
        if (followerEntity != null) {
            followerService.delete(followerEntity);
        }
    }
    @GetMapping("/api/followings")
    public List<UserDTO> getFollowing(@RequestParam("page") Long page, HttpSession session){
        UserDTO user = (UserDTO)session.getAttribute("user");
        return followingService.getFollowingPage(user.getId(),page);
    }
    @GetMapping("/api/searchfollowing")
    public List<UserDTO> searchFollowing(@RequestParam("key") String key, HttpSession session){
        UserDTO user = (UserDTO)session.getAttribute("user");
        return followingService.getFollowingByKey(key, user.getId());
    }
    @GetMapping("/api/followers")
    public List<UserDTO> getFollower(@RequestParam("page") Long page, HttpSession session){
        UserDTO user = (UserDTO)session.getAttribute("user");
        return followerService.getFollowerPage(user.getId(),page);
    }
    @GetMapping("/api/searchfollower")
    public List<UserDTO> searchFollower(@RequestParam("key") String key, HttpSession session){
        UserDTO user = (UserDTO)session.getAttribute("user");
        return followerService.getFollowerByKey(key, user.getId());
    }
}
