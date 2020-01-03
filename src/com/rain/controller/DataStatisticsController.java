package com.rain.controller;

import com.rain.domain.DataStatistics;
import com.rain.service.DataStatisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

import java.util.List;

/**
 * 数据统计
 */
@Controller()
@RequestMapping("dataStatistics")
public class DataStatisticsController {
    @Autowired
    private DataStatisticsService dataStatisticsService;

    @RequestMapping(value = "list",method = RequestMethod.GET)
    public String getDataList(Model model) {
        List<DataStatistics> list = dataStatisticsService.get_DataStatistics();
        if (list!=null){
            model.addAttribute("dataStatistics",list);
        }
        return "dataStatistics/list";
    }
}
