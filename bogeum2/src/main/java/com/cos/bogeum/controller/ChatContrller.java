package com.cos.bogeum.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController//Json 형태로 객체 데이터를 반환하는 주용도
public class ChatContrller {

    @RequestMapping("/mychat")
    public ModelAndView chat() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("testChat");
        return mv;
    }

}
