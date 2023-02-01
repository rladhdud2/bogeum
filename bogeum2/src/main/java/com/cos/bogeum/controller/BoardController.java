package com.cos.bogeum.controller;

import com.cos.bogeum.model.Finds;
import com.cos.bogeum.service.FindsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BoardController {
@Autowired
    private FindsService findsService;

    @GetMapping("/")
    public String board_index(Model model,
                              @PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
//        model.addAttribute("inquirys", inquiryService.글목록(pageable));
//        model.addAttribute("notices", noticeService.Notice_글목록(pageable));
        model.addAttribute("finds", findsService.글목록(pageable));
        return "index";
    }
    /* FAQs 게시판 */

    @GetMapping({ "/auth/inquiry" })
    public String inquiry_index(Model model,
                                @PageableDefault(size = 10, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
        model.addAttribute("inquirys", findsService.글목록(pageable));
        return "board/inquiry_board";
    }

    @GetMapping("/inquiry/{id}/inquiry_board_updateForm")
    public String updateForm(@PathVariable int id, Model model) {
        model.addAttribute("inquirys", findsService.글상세보기(id));
        return "board/inquiry_board_updateForm";
    }

    @GetMapping("/inquiry/{id}")
    public String findById(@PathVariable int id, Model model) {
        model.addAttribute("inquirys", findsService.글상세보기(id));
        findsService.updateCount(id);
        model.addAttribute("reply", findsService.댓글(id));
        return "board/inquiry_board_detail";
    }

    @GetMapping({ "/inquiry_board_saveForm" })
    public String saveForm() {
        return "board/inquiry_board_saveForm";
    }

    @GetMapping("/auth/inquiry/search")
    public String search(@RequestParam(value = "keyword") String keyword, Model model, @PageableDefault(size = 10, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {

        Page<Finds> inquiryDtoList = findsService.searchPosts(keyword, pageable);
        model.addAttribute("keyword", keyword);
        model.addAttribute("inquiryList", inquiryDtoList);
        return "board/inquiry_board_search";
    }
}