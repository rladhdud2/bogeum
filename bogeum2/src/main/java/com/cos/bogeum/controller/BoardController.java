package com.cos.bogeum.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.stereotype.Controller;
@Controller
public class BoardController {
    @GetMapping("/auth/board")
    public String Board(){return "auth/find_board";}
}
