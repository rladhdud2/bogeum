package com.cos.bogeum.controller;

import com.cos.bogeum.repository.ChatRoomRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequiredArgsConstructor
@RequestMapping(value = "/chat")
@Log4j2
public class RoomController {
    private final ChatRoomRepository chatRoomRepository;

    //채팅방 목록 조회
    @GetMapping(value = "/rooms")
    public ModelAndView rooms() {
        log.info("# All Chat Rooms");
        ModelAndView mv = new ModelAndView("chat/rooms");

        //방 목록 불러오기
        mv.addObject("list", chatRoomRepository.findAllById());

        return mv;
    }





}
