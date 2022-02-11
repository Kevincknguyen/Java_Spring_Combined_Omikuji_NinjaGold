package com.coding.omikuji;




import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class GoldController {
	ArrayList<String> messages= new ArrayList<String>();
	Date date= new Date();
	Random random= new Random();
	
	
	 @RequestMapping("/gold")
	 public String home(Model model, HttpSession session){
		 
		if (session.getAttribute("gold")==null){
					session.setAttribute("gold", 0);
			}
		else if ((Integer) session.getAttribute("gold")<-51){
			return "redirect:/jail";
		}
		
		Integer goldCount=(Integer) session.getAttribute("gold");
		model.addAttribute("gold",goldCount);
		model.addAttribute("messages",messages);
			
			return "Gold.jsp";
	 }
	 
	 
	 
	 
	 @RequestMapping(value="/reset")
	 public String reset(HttpSession session) {
		 session.setAttribute("gold", 0);
		 messages.clear();
		 return "redirect:/gold";
	 }
	 
	 
	 
	 
	 @RequestMapping(value="/riches")
	 public String process(
			 @RequestParam(value="goldYield")Integer gold,
			 @RequestParam(value="place")String place,
			 HttpSession session
			 ){
		 
		 Integer finalGold=0;
		 
		 if (gold==0) {
				 Integer multiplier= random.nextInt(51);
				 Integer luck=random.nextInt(2);
				 if (luck ==1) {
					finalGold=(multiplier*-1);
				 }
				 else if (luck==0) {
					 finalGold=multiplier;
				 }
		 }
		 if (gold==5 || gold ==10) {
				 Integer multiplier= random.nextInt(gold);
				 finalGold=gold+ multiplier;
		 }
		 if (gold==2) {
				 Integer multiplier= random.nextInt(4);
				 finalGold=gold+multiplier;
		 }
		 
		 
		 String finalMessage="You entered a "+place +" and ";
		 if (finalGold<0) {finalMessage=finalMessage.concat("lost" + finalGold);}
		 else {finalMessage=finalMessage.concat("earned " + finalGold +"gold ");}
		 finalMessage=finalMessage.concat("("+date.toString()+")");
		 
		 messages.add(finalMessage);
		 session.setAttribute("gold",(Integer) session.getAttribute("gold")+finalGold);
		 
		return "redirect:/gold";
	 }
	 
	 
	 
	 
	 
	 @RequestMapping("/jail")
	 public String jail(HttpSession session){
		 session.setAttribute("gold", 0);
		 messages.clear();
		 return "Jail.jsp";
	 }
	
}
		