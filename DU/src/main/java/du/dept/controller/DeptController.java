package du.dept.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import du.dept.Service.DeptService;
import du.dept.domain.DeptVO;

@Controller
public class DeptController {
	
	@Autowired
	private DeptService DeptService;
	
	
	@RequestMapping("/deptPage.do")
	public ModelAndView deptPage() {
		ModelAndView mav = new ModelAndView("dept/deptList.jsp");
		List<DeptVO> dept = DeptService.selectDeptList();
		mav.addObject("dept",dept);
		return mav;
	}
	
	@RequestMapping("/deptInsertPage.do")
	public String deptInsertPage() {
		return "dept/deptInsert.jsp";
	}
	
	@RequestMapping("/deptInsert.do")
	public String deptInsert(DeptVO dept) {
		DeptService.insertDept(dept);
		return "redirect:/deptPage.do";
	}
	
	@RequestMapping("/deleteDept.do")
	public String deleteDept(String deptCd) {
		DeptService.deleteDept(deptCd);
		return "redirect:/deptPage.do";
	}
}
