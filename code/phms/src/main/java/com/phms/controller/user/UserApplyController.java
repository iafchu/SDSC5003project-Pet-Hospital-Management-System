package com.phms.controller.user;

import com.phms.pojo.Appointment;
import com.phms.pojo.User;
import com.phms.service.AppointmentService;
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

/**
 * 用户预约
 */
@Controller("UserApplyController")
@RequestMapping("/user/apply")
public class UserApplyController {
    @Autowired
    private AppointmentService appointmentService;


    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    /**
     * doctor管理预约页面
     * user/applyListDoctor.html
     */
    @RequestMapping("/applyListDoctor")
    public String applyListDoctor(Long petId, Model model) {
        if (petId!=null){
            model.addAttribute("petId", petId);
        }
        return "user/applyListDoctor";
    }

    /**
     * Ordinary user预约页面
     * user/applyList.html
     */
    @RequestMapping("/applyList")
    public String applyList(Long petId, Model model) {
        if (petId!=null){
            model.addAttribute("petId", petId);
        }
        return "user/applyList";
    }
    /**
     * Ordinary userBackquery数据渲染表格
     */
    @RequestMapping("/getAllByLimit")
    @ResponseBody
    public Object getAllByLimit(Appointment appointment) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        appointment.setUserId(user.getId());
        return appointmentService.getAllByLimit(appointment);
    }
    /**
     * doctor角色Backquery数据渲染表格
     */
    @RequestMapping("/getAllByLimitDoctor")
    @ResponseBody
    public Object getAllByLimitBaoJie(Appointment appointment) {
        return appointmentService.getAllByLimit(appointment);
    }

    /**
     * 根据idDELETE预约
     */
    @RequestMapping(value = "/del")
    @ResponseBody
    @Transactional
    public String delUser(Long id) {
        try {
            appointmentService.deleteById(id);
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("DELETEAbnormal", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }

    /**
     * 添加预约页面 user/applyAdd.html
     */
    @RequestMapping(value = "/add")
    public String addUserPage(Long id, Model model) {
        model.addAttribute("petId", id);
        return "user/applyAdd";
    }

    /**
     * 预约信息插入数据库
     */
    @RequestMapping(value = "/doAdd")
    @ResponseBody
    @Transactional
    public String doAdd(Appointment appointment) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        if (appointment.getPetId() == null){
            return "noPetId";
        }
        try {
            // 当前预约人的id
            appointment.setUserId(user.getId());
            appointment.setCreateTime(new Date());
            // Status:1Waiting,2Pass,3Fail,4Done
            appointment.setStatus(1);
            appointmentService.add(appointment);
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("添加Abnormal", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }

    /**
     * 改变预约Status
     */
    @RequestMapping(value = "/chStatus")
    @ResponseBody
    @Transactional
    public String chStatus(Appointment appointment) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();


        try {
            appointment.setDoctorId(user.getId());
            appointmentService.update(appointment);
            // Treat
            if (appointment.getStatus() == 4){
                return "jz";
            }
            return "SUCCESS";
        } catch (Exception e) {
            logger.error("添加Abnormal", e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return "ERROR";
        }
    }
}
