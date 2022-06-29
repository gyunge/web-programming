package du.main.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	private Logger logger = LoggerFactory.getLogger(MainController.class);

	@RequestMapping(value="/main.do", method = RequestMethod.GET)
	public String mainPageByGet(HttpServletRequest request) {
		
		logger.info(request.getQueryString());
		
		return "main.html";
	}
}
