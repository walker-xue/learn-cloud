package com.donkeycode.fallback;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.donkeycode.core.consts.ErrorCode;
import com.donkeycode.core.response.ResultBody;

import reactor.core.publisher.Mono;

/**
 * 响应超时熔断处理器
 *
 * @author liuyadu
 */
@RestController
public class FallbackController {

    /**
     * @return
     */
    @RequestMapping("/fallback")
    public Mono<ResultBody> fallback() {
        return Mono.just(ResultBody.failed().code(ErrorCode.GATEWAY_TIMEOUT.getCode()).msg("访问超时，请稍后再试!"));
    }
}
