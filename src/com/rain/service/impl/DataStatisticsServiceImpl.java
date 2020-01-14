package com.rain.service.impl;

import com.rain.dao.DataStatisticsDao;
import com.rain.domain.DataStatistics;
import com.rain.service.DataStatisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 数据统计
 */
@Service
@Transactional
public class DataStatisticsServiceImpl implements DataStatisticsService {

    @Autowired
    private DataStatisticsDao dataStatisticsDao;

    @Override
    public List<DataStatistics> get_DataStatistics() {
        return dataStatisticsDao.get_DataStatistics();
    }

    @Override
    public DataStatistics findOne() {
        return dataStatisticsDao.findOne();
    }
}
