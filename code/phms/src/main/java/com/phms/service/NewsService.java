package com.phms.service;

import com.phms.pojo.News;

public interface NewsService {
    void update(News news);

    void add(News news);

    void deleteById(Long id);

    Object getAllByLimit(News news);

    News getById(Long id);

    void view(Long id);
}
