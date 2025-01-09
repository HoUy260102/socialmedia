package com.javaweb.controller.admin;

import com.javaweb.Utils.SessionUtils;
import com.javaweb.converter.UserConverter;
import com.javaweb.entity.UserEntity;
import com.javaweb.model.dto.UserDTO;
import com.javaweb.repository.PostReportRepository;
import com.javaweb.repository.PostRepository;
import com.javaweb.repository.SocialTrafficRepository;
import com.javaweb.service.PostReportService;
import com.javaweb.service.PostService;
import com.javaweb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/admin")
public class HomeAdminController {
    @Autowired
    private UserService userService;
    @GetMapping("")
    public ModelAndView home(@RequestParam(name = "key", required = false, defaultValue = "") String key, @RequestParam(name="page", required = false, defaultValue = "1") int page) {
        ModelAndView mav = new ModelAndView("admin/home");
        mav.addObject("listUser", userService.findAllPagingLike(page-1, key));
        mav.addObject("page", page);
        return mav;
    }
    @Transactional
    @GetMapping("/lock/{id}")
    public void lock(@PathVariable("id") Long id, HttpServletResponse response) throws IOException {
        UserEntity user = userService.findById(id);
        user.setEnable(false);
        userService.saveOrUpdate(user);
        response.sendRedirect("");
    }
    @Autowired
    private UserConverter userConverter;
    @GetMapping("/edit")
    public ModelAndView edit(@RequestParam(name = "id", required = false) Long id) {
        ModelAndView mav = new ModelAndView("admin/editUser");
        if (id==null) {
            UserEntity use = new UserEntity();
            mav.addObject("item", use);
            return mav;
        }
        UserEntity use = userService.findById(id);
        UserDTO userDTO = userConverter.toUserDTO(use);
        if (userDTO.getDateOfBirth()!=null) {
            SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
            mav.addObject("day", f.format(userDTO.getDateOfBirth()));
        }
        mav.addObject("item", userDTO);
        return mav;
    }
    @PostMapping("/editapply")
    public void editApply(
            @RequestParam(value = "id", required = false) Long id,
            @RequestParam(value = "firstName", required = false) String firstName,
                          @RequestParam(value = "lastName", required = false) String lastName,
                          @RequestParam(value = "email", required = false) String email,
                          @RequestParam(value = "phoneNumber", required = false) String phoneNumber,
                          @RequestParam(value = "dateOfBirth", required = false) String dateOfBirth,
                          @RequestParam(value = "password", required = false) String password,
                          @RequestParam(value = "role", required = false) String role,
                          @RequestParam(value = "enable", required = false) Boolean enable, HttpServletResponse response) throws IOException {
            if (id!=null) {
                UserEntity user = userService.findById(id);
                SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
                user.setFirstName(firstName);
                user.setLastName(lastName);
                user.setEmail(email);
                user.setPhoneNumber(phoneNumber);
                user.setRole(role);
                user.setEnable(enable);
                try {
                    user.setDateOfBirth(f.parse(dateOfBirth));
                } catch (ParseException e) {
                    throw new RuntimeException(e);
                }
                userService.saveOrUpdate(user);

            }
            else {
                UserEntity user = new UserEntity();
                SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
                user.setFirstName(firstName);
                user.setLastName(lastName);
                user.setEmail(email);
                user.setPhoneNumber(phoneNumber);
                user.setRole(role);
                user.setEnable(enable);
                BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(12);
                password=encoder.encode(password);
                user.setPassword(password);
                try {
                    user.setDateOfBirth(f.parse(dateOfBirth));
                } catch (ParseException e) {
                    throw new RuntimeException(e);
                }
                userService.saveOrUpdate(user);

            }
            response.sendRedirect("");
    }
    @Autowired
    private PostReportService postReportService;
    @GetMapping("/postReport")
    public ModelAndView postReport() {
        ModelAndView mav = new ModelAndView("admin/ReportPost");
        mav.addObject("listReport", postReportService.findAll());
        return mav;
    }
    @Autowired
    private PostService postService;
    @GetMapping("/post/{id}")
    public ModelAndView post(@PathVariable Long id, HttpSession session) {
        ModelAndView mav = new ModelAndView("admin/post");
        SessionUtils.setSession(session);
        UserDTO userDTO = (UserDTO) session.getAttribute("user");
        mav.addObject("post", postService.findById(id, userDTO.getId()));
        return mav;
    }
    @Autowired
    private PostReportRepository postReportRepository;
    @Autowired
    private PostRepository postRepository;
    @GetMapping("/post/delete/{id}")
    @Transactional
    public void deletePost(@PathVariable Long id, HttpServletResponse response) throws IOException {
        postReportRepository.deleteAllByPostId(id);
        postRepository.deleteById(id);
        response.sendRedirect("/admin/postReport");
    }
    @GetMapping("/postReport/delete/{id}")
    @Transactional
    public void deletePostReport(@PathVariable Long id, HttpServletResponse response) throws IOException {
        postReportRepository.deleteById(id);
        response.sendRedirect("/admin/postReport");
    }
    @Autowired
    private SocialTrafficRepository socialTrafficRepository;
    @GetMapping("/statistic")
    public ModelAndView statistic(@RequestParam(value = "year", required = false) Long year){
        ModelAndView mav = new ModelAndView("admin/statistic");
        String dataPost = postRepository.getCountPostPerMonthByYear(year).stream().map(x->x.getCount().toString()).collect(Collectors.joining(","));
        String dataSocialTraffic = socialTrafficRepository.findStatic(year).stream().map(x->x.getCount().toString()).collect(Collectors.joining(","));
        mav.addObject("dataPost", dataPost);
        mav.addObject("dataSocialTraffic", dataSocialTraffic);
        return mav;
    }
}
