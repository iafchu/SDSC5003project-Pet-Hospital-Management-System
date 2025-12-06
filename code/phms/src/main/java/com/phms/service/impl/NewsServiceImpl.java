package com.phms.service.impl;

import com.phms.mapper.NewsMapper;
import com.phms.model.MMGridPageVoBean;
import com.phms.pojo.News;
import com.phms.service.NewsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class NewsServiceImpl implements NewsService {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Resource
    NewsMapper newsMapper;

    @Override
    public void update(News news) {
        newsMapper.updateByPrimaryKeySelective(news);
    }

    @Override
    public void add(News news) {
        newsMapper.insert(news);
    }

    @Override
    public void deleteById(Long id) {
        newsMapper.deleteByPrimaryKey(id);
    }

    @Override
    public Object getAllByLimit(News po) {
        int size = 0;
        // 计算分页
        Integer begin = (po.getPage() - 1) * po.getLimit();
        po.setPage(begin);

        List<News> rows = new ArrayList<>();
        try {
            rows = newsMapper.getAllByLimit(po);
            size = newsMapper.countAllByLimit(po);
        } catch (Exception e) {
            logger.error("根据records件queryAbnormal", e);
        }
        MMGridPageVoBean<News> vo = new MMGridPageVoBean<>();
        vo.setTotal(size);
        vo.setRows(rows);

        return vo;
    }

    @Override
    public News getById(Long id) {
        return newsMapper.selectByPrimaryKey(id);
    }

    @Override
    public void view(Long id) {
        System.out.println(id);
        News notice = newsMapper.selectByPrimaryKey(id);
        News news = new News();
        news.setId(id);
        news.setViewCount(notice.getViewCount() +1);
        news.setCreateTime(new Date());
        newsMapper.updateByPrimaryKey(news);
    }
}
