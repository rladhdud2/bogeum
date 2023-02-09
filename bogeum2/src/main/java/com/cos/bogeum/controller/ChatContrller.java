package com.cos.bogeum.controller;

import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@Log4j2
public class ChatContrller {

    @GetMapping("/chat")
    public String chatGET() {
        log.info("@ChatController, chat GET()");
        return "thymeleaf/chat";
    }

//    @RequestMapping("/mychat")
//    public ModelAndView chat() {
//        ModelAndView mv = new ModelAndView();
//        mv.setViewName("testChat");
//        return mv;
//    }

}
