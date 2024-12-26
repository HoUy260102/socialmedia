package com.javaweb.controller.web;

import com.javaweb.converter.UserConverter;
import com.javaweb.entity.FollowingEntity;
import com.javaweb.entity.UserEntity;
import com.javaweb.model.dto.MyUserDetail;
import com.javaweb.model.dto.UserDTO;
import com.javaweb.model.dto.UserSearchResponseDTO;
import com.javaweb.repository.NotificationRepository;
import com.javaweb.security.utils.SecurityUtils;
import com.javaweb.service.*;
import com.javaweb.service.Impl.CustomUserDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.stream.Collectors;


@RestController
public class HomeController {
	@Autowired
	private UserService userService;
	@Autowired
	private UserConverter userConverter;
	@Autowired
	private FollowingService followingService;
	@Autowired
	private FollowerService followerService;
	@Autowired
	private PostService postService;
	@Autowired
	private NotificationRepository notificationRepository;
	@Autowired
	private NotificationService notificationService;
	@GetMapping(value = "/myprofile")
	public ModelAndView myProfile(HttpSession session) {
		ModelAndView mav = new ModelAndView("web/myprofile");
		mav.addObject("listPost", postService.findAllByUser_IdAndOrderByDate_createdDesc(((UserDTO)session.getAttribute("user")).getId()));
		mav.addObject("notificationCnt", notificationRepository.countAllByReceiver_IdAndSeen(((UserDTO)session.getAttribute("user")).getId(),0L));
		mav.addObject("listNotification", notificationService.findAllByReceiver_IdOrderByIdDesc(((UserDTO)session.getAttribute("user")).getId(),0));
		return mav;
	}
	@GetMapping(value = "/edit-profile")
	public ModelAndView editMyProfile(@ModelAttribute UserEntity userEntity,HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView("web/edit");
		userEntity = userService.findByEmail(((UserDTO) session.getAttribute("user")).getEmail());
		mav.addObject("userEdit", userEntity);
		return mav;
	}
	@GetMapping("/profile/{id}")
	public ModelAndView profile(@PathVariable Long id, HttpSession session) throws Exception{
		ModelAndView mav = new ModelAndView("web/profile");
		UserDTO userDTO = (UserDTO) session.getAttribute("user");
		FollowingEntity followingEntity = followingService.findByFollowingIdAndUser_Id(id,userDTO.getId());
		mav.addObject("following", userConverter.toUserDTO((userService.findById(id))));
		mav.addObject("listPost", postService.findAllByUser_IdAndOrderByDate_createdDesc(id, userDTO.getId()));
		mav.addObject("check",followingEntity==null?0:1);
		mav.addObject("notificationCnt", notificationRepository.countAllByReceiver_IdAndSeen(userDTO.getId(),0L));
		mav.addObject("listNotification", notificationService.findAllByReceiver_IdOrderByIdDesc(userDTO.getId(),0));
		return mav;
	}
	@GetMapping("/post/{id}")
	public ModelAndView post(@PathVariable Long id, HttpSession session) {
		ModelAndView mav = new ModelAndView("web/post");
		UserDTO userDTO = (UserDTO) session.getAttribute("user");
		mav.addObject("post", postService.findById(id, userDTO.getId()));
		mav.addObject("notificationCnt", notificationRepository.countAllByReceiver_IdAndSeen(userDTO.getId(),0L));
		mav.addObject("listNotification", notificationService.findAllByReceiver_IdOrderByIdDesc(userDTO.getId(),0));
		return mav;
	}
	@GetMapping(value = "/")
	public ModelAndView index(HttpSession session) {
		ModelAndView mav = new ModelAndView("web/index");
		UserDTO userDTO = (UserDTO) session.getAttribute("user");
		UserEntity user = userService.findById(userDTO.getId());
		List<Long> ids = user.getListFollowing().stream().map(x->x.getFollowingId()).collect(Collectors.toList());
		ids.add(user.getId());
		mav.addObject("listPost", postService.findAllByUser_IdInOrderByDateCreatedDesc(ids,0, user.getId()));
		mav.addObject("notificationCnt", notificationRepository.countAllByReceiver_IdAndSeen(user.getId(),0L));
		mav.addObject("listNotification", notificationService.findAllByReceiver_IdOrderByIdDesc(user.getId(),0));
		return mav;
	}
	@GetMapping(value = "/login")
	public ModelAndView login(Model model,@RequestParam(name = "mes", required = false) String mes, HttpServletResponse response, HttpServletRequest request, HttpSession session) throws Exception{
		ModelAndView mav = new ModelAndView("login");
		if (mes!=null&&mes.equals("0")) {
			mav.addObject("mes","Mật khẩu hoặc tài khoản không chính xác");
		}
		else if (mes!=null&&mes.equals("1")) {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			List<String> roles = SecurityUtils.getAuthorities();
			MyUserDetail myUserDetail =(MyUserDetail) auth.getPrincipal();
			session.setAttribute("user",myUserDetail.getUserDTO());
			session.removeAttribute("username");
			if (roles.contains("ROLE_USER")) {
				response.sendRedirect("/");
			}
		}
		return mav;
	}
	@GetMapping(value = "/signup")
	public ModelAndView signup(Model model) {
		return new ModelAndView("signup");
	}
	@GetMapping("/following")
	public ModelAndView following(HttpSession session, HttpServletResponse response, HttpServletRequest request) throws Exception{
		ModelAndView mav = new ModelAndView("/web/following");
		UserDTO userDTO = (UserDTO)session.getAttribute("user");
		mav.addObject("listFollowing", followingService.getFollowingPage(userDTO.getId(),1L));
		mav.addObject("notificationCnt", notificationRepository.countAllByReceiver_IdAndSeen(((UserDTO)session.getAttribute("user")).getId(),0L));
		mav.addObject("listNotification", notificationService.findAllByReceiver_IdOrderByIdDesc(((UserDTO)session.getAttribute("user")).getId(),0));
		return mav;
	}
	@GetMapping("/follower")
	public ModelAndView follower(HttpSession session, HttpServletResponse response, HttpServletRequest request) throws Exception{
		ModelAndView mav = new ModelAndView("/web/follower");
		UserDTO userDTO = (UserDTO)session.getAttribute("user");
		mav.addObject("listFollower", followerService.getFollowerPage(userDTO.getId(),1L));
		mav.addObject("notificationCnt", notificationRepository.countAllByReceiver_IdAndSeen(((UserDTO)session.getAttribute("user")).getId(),0L));
		mav.addObject("listNotification", notificationService.findAllByReceiver_IdOrderByIdDesc(((UserDTO)session.getAttribute("user")).getId(),0));
		return mav;
	}
	@GetMapping("/searchuser")
	public ModelAndView searchUser(@RequestParam("key") String key, HttpSession session) {
		ModelAndView mav = new ModelAndView("web/searchuser");
		UserDTO userDTO = (UserDTO) session.getAttribute("user");
		List<UserSearchResponseDTO> result = userService.findAllByKey(key,userDTO.getId());
		mav.addObject("keyid",key);
		mav.addObject("listSearchUser", result);
		mav.addObject("notificationCnt", notificationRepository.countAllByReceiver_IdAndSeen(((UserDTO)session.getAttribute("user")).getId(),0L));
		mav.addObject("listNotification", notificationService.findAllByReceiver_IdOrderByIdDesc(((UserDTO)session.getAttribute("user")).getId(),0));
		return mav;
	}
	@PostMapping(value = "/edit-profileapply")
	public void editMyProfileApply(@RequestParam(name = "photo", required = false) MultipartFile photo,
			@ModelAttribute UserEntity userEntity,
			HttpSession session, HttpServletResponse response, HttpServletRequest request) throws Exception {
		UserEntity userEdit = userService.findByEmail(userEntity.getEmail());
		if (photo!=null&&photo.getOriginalFilename()!="") {
			try {
				ServletContext servletContext = request.getServletContext();
				String photoPath = servletContext.getRealPath("/assets/images/avatar/"+photo.getOriginalFilename());
				photo.transferTo(new File(photoPath));
				userEdit.setLinkImgAvatar("/assets/images/avatar/"+photo.getOriginalFilename());
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		userEdit.setFirstName(userEntity.getFirstName());
		userEdit.setLastName(userEntity.getLastName());
		userEdit.setPhoneNumber(userEntity.getPhoneNumber());
		userEdit.setWork(userEntity.getWork());
		userEdit.setLive(userEntity.getLive());
		userEdit.setDateOfBirth(userEntity.getDateOfBirth());
		userService.saveOrUpdate(userEdit);
		session.setAttribute("user", userConverter.toUserDTO(userEdit));
		response.sendRedirect("/edit-profile");
	}
	@PostMapping(value = "/check-login")
	public void checkLogin(@RequestParam("email")String email,
						   @RequestParam("password")String password,
						   HttpServletRequest request, HttpServletResponse response) throws Exception {
		UserEntity user = userService.findByEmail(email);
		String mes = "";
		RequestDispatcher rd = null;
		if (user == null) {
			mes = "Địa chỉ email không tồn tại";
			request.setAttribute("mes", mes);
			request.setAttribute("email",email);
			request.setAttribute("password",password);
			rd = request.getRequestDispatcher("/WEB-INF/views/login.jsp");
			rd.forward(request,response);
			return;
		}
		else if (!user.getPassword().equals(password)) {
			mes = "Mật khẩu không chính xác";
			request.setAttribute("mes", mes);
			request.setAttribute("email",email);
			request.setAttribute("password",password);
			rd = request.getRequestDispatcher("/WEB-INF/views/login.jsp");
			rd.forward(request,response);
			return;
		}
		HttpSession se = request.getSession();
		se.setAttribute("user",userConverter.toUserDTO(user));
		response.sendRedirect("/");
	}
	@PostMapping(value = "/signupcheck")
	public void signupcheck(@RequestParam(value = "firstName", required = false) String firstName,
					   @RequestParam(value = "lastName", required = false) String lastName,
					   @RequestParam(value = "email", required = false) String email,
					   @RequestParam(value = "phoneNumber", required = false) String phoneNumber,
					   @RequestParam(value = "dateOfBirth", required = false) String dateOfBirth,
					   @RequestParam(value = "password", required = false) String password,
					   @RequestParam(value = "comfimePassword", required = false) String comfimePassword
			,HttpServletResponse response, HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");
		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
		UserEntity user = new UserEntity();
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setEmail(email);
		user.setPhoneNumber(phoneNumber);
		user.setPassword(password);
		user.setDateOfBirth(f.parse(dateOfBirth));
		user.setLinkImgAvatar("/assets/images/avatar/avatar-trang.jpg");
		UserEntity userEntity = userService.findByEmail(email);
		String mes = "";
		RequestDispatcher rd;
		if (userEntity!=null) {
			mes = "Địa chỉ email đã tồn tại";
			request.setAttribute("mes",mes);
			request.setAttribute("userSignUp", user);
			rd = request.getRequestDispatcher("/WEB-INF/views/signup.jsp");
			rd.forward(request, response);
			return;
		}
		else if (!password.equals(comfimePassword)) {
			mes = "Mật khẩu không khớp";
			request.setAttribute("mes",mes);
			request.setAttribute("userSignUp", user);
			rd = request.getRequestDispatcher("/WEB-INF/views/signup.jsp");
			rd.forward(request, response);
			return;
		}
		userService.saveOrUpdate(user);
		HttpSession se = request.getSession();
		se.setAttribute("user",userConverter.toUserDTO(user));
		response.sendRedirect("/");
	}
	@GetMapping("/logout")
	public void logout(HttpSession session, HttpServletResponse response, HttpServletRequest request) throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		session.removeAttribute("user");
		response.sendRedirect("login");
	}
}
