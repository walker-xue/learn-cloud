package com.donkeycode.resource;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Api(value = "车牌服务控制器", description = "提供车牌抓拍搜索等相关接口")
@RestController
public class CarAlarmResource {

    @ApiOperation(value = "增加车牌抓拍报警", notes = "上传车牌识别报警信息并入库")
    @GetMapping("/add/{id}")
    public String add(@PathVariable String id) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        log.debug("授权信息:{}", authentication);
        return "Add car alarm";
    }
}
