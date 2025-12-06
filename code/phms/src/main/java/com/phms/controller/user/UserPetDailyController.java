package com.phms.controller.user;

import com.phms.model.MMGridPageVoBean;
import com.phms.pojo.Pet;
import com.phms.pojo.PetDaily;
import com.phms.pojo.User;
import com.phms.service.PetDailyService;
import com.phms.service.PetService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

/**
 * Pet log
 */
@Controller("UserPetDailyController")
@RequestMapping("/user/petDaily")
public class UserPetDailyController {
    @Autowired
    private PetDailyService petDailyService;
    @Autowired
    private PetService petService;

    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    /**
     * doctorPet log页面user/petDailyListDoctor.html
     */
    @RequestMapping("/petDailyListDoctor")
    public String petListDoctor(Long petId, Model model) {
        if (petId!=null){
            model.addAttribute("petId", petId);
        }else {
            model.addAttribute("petId", "petId");
        }
        return "user/petDailyListDoctor";
    }

    /**
     * Ordinary userPet log页面user/petDailyList.html
     */
    @RequestMapping("/petDailyList")
    public String petDailyList(Long petId, Model model) {
        if (petId!=null){
            model.addAttribute("petId", petId);
        }else {
            model.addAttribute("petId", "petId");
        }
        return "user/petDailyList";
    }
    /**
     * Ordinary userBackquery数据
     */
    @RequestMapping("/getAllByLimit")
    @ResponseBody
    public Object getAllByLimit(PetDaily pojo) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        pojo.setUserId(user.getId());
        return petDailyService.getAllByLimit(pojo);
    }

    /**
     * doctorBackquery数据
     */
    @RequestMapping("/getAllByLimitDoctor")
    @ResponseBody
    public Object getAllByLimitDoctor(PetDaily pojo) {
        return petDailyService.getAllByLimit(pojo);
    }

    /**
     * DELETE
     */
    @RequestMapping(value = "/del")
    @ResponseBody
    @Transactional
    public String del(Long id) {
        try {
            petDailyService.deleteById(id);
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("DELETEAbnormal", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }

    /**
     * 添加页面user/petDailyAdd.html
     */
    @RequestMapping(value = "/add")
    public String add(Model model) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        Pet pet = new Pet();
        pet.setUserId(user.getId());
        pet.setPage(1);
        pet.setLimit(100);
        MMGridPageVoBean<Pet> voBean = (MMGridPageVoBean<Pet>) petService.getAllByLimit(pet);
        List<Pet> rows = voBean.getRows();
        // 获取到该用户下所有的pet
        model.addAttribute("pets", rows);
        return "user/petDailyAdd";
    }

    /**
     * 插入数据库
     */
    @RequestMapping(value = "/doAdd")
    @ResponseBody
    @Transactional
    public String doAdd(PetDaily pojo) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        try {
            pojo.setUserId(user.getId());
            pojo.setCreateTime(new Date());
            petDailyService.add(pojo);
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("添加Abnormal", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }

}
