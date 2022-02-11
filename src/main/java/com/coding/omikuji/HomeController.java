package com.coding.omikuji;


import org.springframework.stereotype.Controller;
import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	 @RequestMapping("/")
	 public String home(Model model, HttpSession session){
		 
		
		return "Home.jsp";
	 }
	 
	 
	 @RequestMapping(value="/process", method=RequestMethod.POST)
	 public String process(
			 @RequestParam(value="name")String name,
			 @RequestParam(value="message")String message,
			 @RequestParam(value="hobby")String hobby,
			 @RequestParam(value="living")String living,
			 @RequestParam(value="city")String city,
			 @RequestParam(value="number")Integer number,
			 HttpSession session
			 
			 ){
		 
		 session.setAttribute("name",name);
		 session.setAttribute("message",message);
		 session.setAttribute("hobby",hobby);
		 session.setAttribute("living",living);
		 session.setAttribute("city",city);
		 session.setAttribute("number",number);
		 
		return "redirect:/result";
	 }
	 
	 
	 @RequestMapping("/result")
	 public String result(Model model, HttpSession session){
		
		if (session.getAttribute("name")==null) {
			 return "redirect:/";
		}
		String resultName=(String) session.getAttribute("name");
		model.addAttribute("name",resultName);
		
		String resultMessage=(String) session.getAttribute("message");
		model.addAttribute("message",resultMessage);
		
		String resultHobby=(String) session.getAttribute("hobby");
		model.addAttribute("hobby",resultHobby);
		
		String resultLiving=(String) session.getAttribute("living");
		model.addAttribute("living",resultLiving);
		
		Integer resultNumber=(Integer) session.getAttribute("number");
		model.addAttribute("number",resultNumber);
		 
		 
		return "Result.jsp";
	 }
	
}
		