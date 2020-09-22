package com.donkeycode.resource;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.donkeycode.core.response.ObjectResponse;

import io.swagger.annotations.Api;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Api(value = "车牌服务控制器2", description = "提供车牌抓拍搜索等相关接口2")
@RestController
@RequestMapping("api/lecturer")
public class LecturerResource {

    @PostMapping("/index")
    public ObjectResponse<String> index() {
        return new ObjectResponse<String>().data("ok");
    }
}
