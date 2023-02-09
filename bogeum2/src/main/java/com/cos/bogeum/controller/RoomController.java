package com.cos.bogeum.controller;

import com.cos.bogeum.model.Room;
import com.cos.bogeum.model.Users;
import com.cos.bogeum.repository.ChatRoomRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequiredArgsConstructor
@RequestMapping(value = "/chat")
@Log4j2
public class RoomController {
    private final ChatRoomRepository chatRoomRepository;


//    public List<Room> findAllRoom() {
//        return chatRoomRepository.findAll();
//    }

    /**
     * 채팅 방 목록 조회
     */
    @GetMapping(value = "/rooms")
    public String findAllRoom(Model model) {
        log.info("# All Chat Rooms");
//        ModelAndView mv = new ModelAndView("chat/rooms");
        //방 목록 불러오기
        model.addAttribute("list", chatRoomRepository.findAll());

        return "th/chat/rooms";
    }






}
