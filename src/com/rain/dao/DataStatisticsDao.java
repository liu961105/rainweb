package com.rain.dao;

import com.rain.domain.DataStatistics;
import org.apache.ibatis.annotations.Select;

import java.util.List;

import static com.rain.util.common.Constants.DataStatisticsTABLE;

/**
 * 数据统计Dao
 */

public interface DataStatisticsDao {
    @Select("select * from "+DataStatisticsTABLE+" ")
    List<DataStatistics> get_DataStatistics();
}
