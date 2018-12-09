package life.gan.blogan.controller;

import java.util.List;

import javax.validation.Valid;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import life.gan.blogan.entity.User;
import life.gan.blogan.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserService userService;
	
	/**
	 * 跳转用户登录界面
	 * @return 登陆视图
	 */
	@GetMapping("/login")
	public String loginPage() {
		return "user/login";
	}
	/**
	 * 跳转用户注册界面
	 * @return 注册视图
	 */
	@GetMapping("/register")
	public String registerPage() {
		return "user/register";
	}
	/**
	 * 用户登陆验证
	 * @return 成功：主页视图；失败：登陆视图
	 */
	@PostMapping("/login")
	public String loginUser(@Valid User user, Model model) {
		String error = null;
		Subject currentUser = SecurityUtils.getSubject();
		if (!currentUser.isAuthenticated()) {
			logger.info("用户已验证！");
			UsernamePasswordToken token = new UsernamePasswordToken(user.getName(), user.getPassword());
			token.setRememberMe(true);
			try {
				currentUser.login(token);
				logger.info("登陆成功");
				return "redirect:/home";
			} catch (UnknownAccountException uae) {			//未知账户异常
				error = "----用户名错误----";
			} catch (IncorrectCredentialsException ice) {	//密码错误异常
				error = "----密码错误----";
			} catch (LockedAccountException lae) {			//锁定账户异常
				error = "----账户已被封禁----";
			} catch (ExcessiveAttemptsException eae) {		//过度尝试异常
				error = "----登陆过于频繁，请稍后再尝试----";
			} catch (AuthenticationException ae) {			//认证异常
				error = "----验证失败----";
			}
			logger.error(error);
			model.addAttribute("error", error);
			return "user/login";
		}
		return "redirect:/home";
	}
	/**
	 * 注销用户
	 * @return 主页视图
	 */
	@GetMapping("/logout")
	public String logout() {
		Subject currentUser = SecurityUtils.getSubject();
		currentUser.logout();
		return "redirect:/home";
	}
	/**
	 * 用户注册新增
	 * @param user
	 * @return
	 */
	@PostMapping("/register")
	public String addUser(@Valid User user, BindingResult result) {
		//判断数据格式是否正确
		if(result.hasErrors()) {
			return "user/register";
		}
		//判断是否同名
		if(userService.getUserByUserName(user.getName()) == null) {
			userService.addUser(user);
			return "redirect:/home";
		}else {
			return "user/register";
		}
	}
	/**
	 * 跳转用户修改界面
	 * @return 修改视图
	 */
	@GetMapping("/modify")
	public String modifyPage(Model model) {
		Subject currentUser = SecurityUtils.getSubject();
		User user = userService.getUserByUserName((String) currentUser.getPrincipal());
		model.addAttribute(user);
		return "user/modify";
	}
	/**
	 * 用户信息修改
	 * @param id
	 * @param user
	 * @return
	 */
	@PostMapping("/modify")
	public String modify(User user) {
		userService.modifyUser(user);
		return "redirect:/home";
	}
	/**
	 * 用户——列表
	 * @param model
	 * @return
	 */
	@GetMapping(value="/list")
	public String listUser(Model model) {
		List<User> userList = userService.getAllUsers(); 
		model.addAttribute("userList", userList);
		return "listUser";
	}
	/**
	 * 用户——详情
	 * @param userId
	 * @return
	 */
	@GetMapping("/{id}")
	public String showUser(@PathVariable("id") int userId) {
		System.out.println(userId);
		return "index";
	}
}
