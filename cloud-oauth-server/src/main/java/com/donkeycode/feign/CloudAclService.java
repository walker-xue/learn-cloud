package com.donkeycode.feign;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.donkeycode.core.CLoudServiceConst;
import com.donkeycode.security.CloudUserDetails;
import com.donkeycode.util.user.UserAndPasswordToken;

/**
 * 用户接口
 *
 * @author wanghaobin
 * @create 2017-06-21 8:11
 */
@FeignClient(value = CLoudServiceConst.LEARN_BASELIB_SERVICE)
public interface CloudAclService {

    @PostMapping(value = "/rpc/user/validate")
    CloudUserDetails validate(@RequestBody UserAndPasswordToken token);
}
