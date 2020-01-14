package com.rain.utils;


import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 获取当前时间的工具类
 */
public  class currentDate {
    public static String getCurrentDate(){
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String nowDate = sdf.format(date);
        return nowDate;
    }

}
