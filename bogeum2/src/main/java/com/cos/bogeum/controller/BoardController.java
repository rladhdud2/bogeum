package com.cos.bogeum.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.stereotype.Controller;
@Controller
public class BoardController {
    @GetMapping("/auth/board")
    public String Board(){ return "board/main_board";}
    @GetMapping("/auth/findBoard")
    public String findBoard(){ return "board/find_board";}
}
