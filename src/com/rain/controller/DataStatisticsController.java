package com.rain.controller;
import com.rain.domain.DataStatistics;
import com.rain.domain.ResultEntity;
import com.rain.service.DataStatisticsService;
import com.sun.deploy.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.List;


/**
 * 数据统计
 */
@Controller()
@RequestMapping("dataStatistics")
public class DataStatisticsController extends  BaseController{
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
    @RequestMapping("findById")
    @ResponseBody
    public ResultEntity findById(String id){
        ResultEntity resultEntity = new ResultEntity();
        try {

            return resultEntity;
        }catch (Exception e){
            return resultEntity;
        }
    }

}
