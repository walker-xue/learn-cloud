package com.donkeycode.web;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.donkeycode.core.response.ObjectResponse;

@RestController
@RequestMapping("api/lecturer")
public class LecturerController {

    @PostMapping("/index")
    public ObjectResponse<String> index() {
        return new ObjectResponse<String>().data("ok");
    }
}
