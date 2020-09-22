package com.donkeycode.feign;

import com.donkeycode.common.user.UserGrantedAuthority;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RequestParam;

/**
 * 验证用户是否拥有权限
 *
 * @author yanjun.xue
 * @create 2017-06-21 8:11
 */
@FeignClient(value = "donkey-cloud-acl")
public interface CloudACLService {

    /**
     * 验证用户是否对资源有操作权限
     *
     * @param userId
     * @param resourceType
     * @param resourceId
     * @param operateType
     * @return
     */
    @GetMapping(value = "/rpc/user/{userId}/authorization")
    UserGrantedAuthority validatePerm(@PathVariable("userId") String userId,
                                     @RequestParam String resourceType,
                                     @RequestParam String resourceId,
                                     @RequestParam String operateType);
}
