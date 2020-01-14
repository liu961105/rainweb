package com.rain.controller;

import com.rain.service.DataStatisticsService;
import com.rain.service.RainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class CommonController {
	@Resource
	private DataStatisticsService dataStatisticsService;
	@Resource
	private RainService rainService;

	@RequestMapping(value="/{formName}")
	 public String loginForm(@PathVariable String formName){
		// 作为一个空方法，可以匹配任何无效输入，再跳转到404
		return formName;
//		String blank = "blank";
//		return blank;
	}
	
	@RequestMapping(value="/")
	 public String index(){
		String blank = "index";
		return blank;

	}

	@RequestMapping(value="/welcome")
	 public String welcome(Model model){
		model.addAttribute("dataStatistics",dataStatisticsService.findOne());
		//查询最新的公告
		model.addAttribute("notice",rainService.getNewNotice());
		String blank = "welcome";
		return blank;
	}
}
