package du.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import du.user.domain.UserVO;

@Controller
public class UserController {
	@RequestMapping("/signUpPage.do")
	public String signUpPage() {
		return "user/signUp.jsp";
	}
	
	@RequestMapping("/signUp.do")
	public String signUp(UserVO user) {
		
		return "redirect:/loginPage.do";
	}
}
