package com.phms.controller.user;


import com.phms.pojo.News;
import com.phms.pojo.Notice;
import com.phms.service.NewsService;
import com.phms.service.NoticeService;
import com.phms.utils.MyUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.ui.Model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.SimpleFormatter;

/**
 * 健康指南和News
 */
@Controller("UserNoticeController")
@RequestMapping("/user/notice")
public class UserNoticeController {
    @Autowired
    private NoticeService noticeService;

    @Autowired
    private NewsService newsService;

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    /**
     * 查看detail页面/user/xqWord.html
     */
    @RequestMapping("/xq")
    public String xq(Long id, Model model) {
        noticeService.view(id);
        Notice word = noticeService.getById(id);
        System.out.println(word.getContent());
        model.addAttribute("c", word.getContent());
        model.addAttribute("title", word.getTitle());
        model.addAttribute("view", word.getViewCount());
        model.addAttribute("time", MyUtils.getDate2String(word.getCreateTime()));
        return "/user/xqWord";
    }

    /**
     * 查看Newsdetail页面/user/xqWord.html
     */
    @RequestMapping("/Newsxq")
    public String News(Long id, Model model) {
        System.out.println(id);
        newsService.view(id);
        News word = newsService.getById(id);
        System.out.println(word);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = simpleDateFormat.format(word.getCreateTime());
        System.out.println(format);
        model.addAttribute("c", word.getContent());
        model.addAttribute("title", word.getTitle());
        model.addAttribute("view", word.getViewCount());
        model.addAttribute("time", format);
        return "/user/xqWord";
    }

    /**
     * Ordinary user查看列表/user/wordList.html
     */
    @RequestMapping("/list")
    public String list() {
        return "/user/wordList";
    }

    /**
     * doctor查看列表/user/wordListDoctor.html
     */
    @RequestMapping("/listDoctor")
    public String listDoctor() {
        return "/user/wordListDoctor";
    }

    //News
    @RequestMapping("/listNew")
    public String listNew() {
        return "/user/newList";
    }

    /**
     * doctorsubmit指南页面/user/word.html
     */
    @RequestMapping("/publish")
    public String publish() {
        return "/user/word";
    }

    /**
     * submitNews页面/user/news.html
     */
    @RequestMapping("/addNews")
    public String addNews() {
        return "/user/news";
    }

    /**
     * 添加到数据库
     */
    @ResponseBody
    @RequestMapping("/addWord")
    public String addWord(Notice notice) {
        try {
            notice.setCreateTime(new Date());
            notice.setViewCount(0L);
            noticeService.add(notice);
            return "SUCCESS";
        } catch (Exception e) {
            e.printStackTrace();
            return "ERR";
        }
    }

    /**
     * 添加News到数据库
     */
    @ResponseBody
    @RequestMapping("/addNew")
    public String addNew(News notice) {
        try {
            notice.setCreateTime(new Date());
            notice.setViewCount(1L);
            newsService.add(notice);
            return "SUCCESS";
        } catch (Exception e) {
            e.printStackTrace();
            return "ERR";
        }
    }

    /**
     * 获取所有指南数据
     */
    @RequestMapping("/getAllWordByLimit")
    @ResponseBody
    public Object getAllWordByLimit(Notice word) {
        return noticeService.getAllByLimit(word);
    }

    /**
     * 获取所有News数据
     */
    @RequestMapping("/getAllNewsByLimit")
    @ResponseBody
    public Object getAllNewsByLimit(News word) {
        return newsService.getAllByLimit(word);
    }

    /**
     * DELETE指南
     */
    @ResponseBody
    @RequestMapping("/delWord")
    public String delWord(String[] ids) {
        try {
            for (String id : ids){
                noticeService.deleteById(Long.parseLong(id));
            }
            return "SUCCESS";
        } catch (Exception e) {
            e.printStackTrace();
            return "ERR";
        }
    }

    /**
     * DELETENews
     */
    @ResponseBody
    @RequestMapping("/delNews")
    public String delNews(String[] ids) {
        try {
            for (String id : ids){
                newsService.deleteById(Long.parseLong(id));
            }
            return "SUCCESS";
        } catch (Exception e) {
            e.printStackTrace();
            return "ERR";
        }
    }
}
