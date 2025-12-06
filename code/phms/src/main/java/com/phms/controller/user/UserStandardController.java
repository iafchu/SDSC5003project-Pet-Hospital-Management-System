package com.phms.controller.user;

import com.phms.pojo.Standard;
import com.phms.pojo.User;
import com.phms.service.StandardService;
import com.phms.service.StandardService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;

/**
 * 监控标准
 */
@Controller("UserStandardController")
@RequestMapping("/user/standard")
public class UserStandardController {
    @Autowired
    private StandardService standardService;

    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    /**
     * doctor列表页面user/standardListDoctor.html
     */
    @RequestMapping("/standardListDoctor")
    public String standardListDoctor() {
        return "user/standardListDoctor";
    }
    /**
     * Ordinary user页面user/standardList.html
     */
    @RequestMapping("/standardList")
    public String standardList() {
        return "user/standardList";
    }
    /**
     * Ordinary userBackquery数据
     */
    @RequestMapping("/getAllByLimit")
    @ResponseBody
    public Object getAllByLimit(Standard pojo) {
        return standardService.getAllByLimit(pojo);
    }
    /**
     * doctorBackquery数据
     */
    @RequestMapping("/getAllByLimitDoctor")
    @ResponseBody
    public Object getAllByLimitBaoJie(Standard pojo) {
        return standardService.getAllByLimit(pojo);
    }

    /**
     * 根据idDELETE
     */
    @RequestMapping(value = "/del")
    @ResponseBody
    @Transactional
    public String del(Long id) {
        try {
            standardService.deleteById(id);
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("DELETEAbnormal", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }

    /**
     * 添加页面 user/standardAdd.html
     */
    @RequestMapping(value = "/add")
    public String add() {
        return "user/standardAdd";
    }

    /**
     * 插入数据库
     */
    @RequestMapping(value = "/doAdd")
    @ResponseBody
    @Transactional
    public String doAdd(Standard pojo) {
        try {
            standardService.add(pojo);
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("添加Abnormal", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }
}
