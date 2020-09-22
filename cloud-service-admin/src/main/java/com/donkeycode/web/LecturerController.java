package com.donkeycode.web;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api/lecturer")
public class LecturerController {

    @PostMapping("/index")
    public Object index() {
        return new Object();
    }
}
