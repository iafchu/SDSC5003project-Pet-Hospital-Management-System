package com.phms.controller.user;

import com.phms.pojo.Pet;
import com.phms.pojo.User;
import com.phms.service.PetService;
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
 * 用户pet管理
 */
@Controller("UserPetController")
@RequestMapping("/user/pet")
public class UserPetController {
    @Autowired
    private PetService petService;

    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    /**
     * doctor管理pet页面user/petListDoctor.html
     */
    @RequestMapping("/petListDoctor")
    public String petListDoctor() {
        return "user/petListDoctor";
    }

    /**
     * Ordinary user管理pet页面user/petList.html
     */
    @RequestMapping("/petList")
    public String petList() {
        return "user/petList";
    }
    /**
     * Ordinary userBackquery数据
     */
    @RequestMapping("/getAllByLimit")
    @ResponseBody
    public Object getAllByLimit(Pet pojo) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        pojo.setUserId(user.getId());
        return petService.getAllByLimit(pojo);
    }

    /**
     * doctorBackquery数据
     */
    @RequestMapping("/getAllByLimitDoctor")
    @ResponseBody
    public Object getAllByLimitDoctor(Pet pojo) {
        return petService.getAllByLimit(pojo);
    }

    /**
     * DELETEpet
     */
    @RequestMapping(value = "/del")
    @ResponseBody
    @Transactional
    public String del(Long id, Long type) {
        if (type!=null && type ==2){
            return "app";
        }
        try {
            petService.deleteById(id);
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("DELETEAbnormal", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }

    /**
     * 添加pet页面user/petAdd.html
     */
    @RequestMapping(value = "/add")
    public String add() {
        return "user/petAdd";
    }

    /**
     * 添加到数据库
     */
    @RequestMapping(value = "/doAdd")
    @ResponseBody
    @Transactional
    public String doAdd(Pet pojo) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        try {
            pojo.setUserId(user.getId());
            pojo.setCreateTime(new Date());
            petService.add(pojo);
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("添加Abnormal", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }
}
