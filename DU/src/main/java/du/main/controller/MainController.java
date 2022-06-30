package du.main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.PrintWriter;
import java.util.Arrays;


import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import du.user.service.UserService;

@Controller
public class MainController {
	
	private Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	private UserService userService;
	
	
	@RequestMapping(value="/main.do", method = RequestMethod.POST)
	public String mainPageByPOST(
			@RequestParam("user_id") String userId,
			@RequestParam("user_pw") String userPw,
			HttpServletResponse response
			) throws Exception {
		
			response.setCharacterEncoding("euc-kr");
		boolean isLogin = userService.isLogin(userId, userPw);
		if(isLogin) {
			return "main.html";
		} else {
			PrintWriter out = response.getWriter();
			out.println("<script");
			out.println("alert('아이디 혹은 비밀번호가 잘못되었습니다.');");
			out.println("location.href='loginPage.do';");
			out.println("<script");
				
		return null;
	}
}
	
	@RequestMapping(value = "/loginPage.do", method = RequestMethod.GET)
	public String loginPage() {
		
		return "login.html";
	}
}
