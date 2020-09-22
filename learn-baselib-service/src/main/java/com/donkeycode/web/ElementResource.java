package com.donkeycode.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.donkeycode.core.response.ObjectResponse;
import com.donkeycode.data.entity.Element;
import com.donkeycode.data.service.IElementService;
import com.donkeycode.data.service.IUserService;

/**
 * ${DESCRIPTION}
 *
 * @author wanghaobin
 * @create 2017-06-23 20:30
 */
@RestController
@RefreshScope
@RequestMapping("element")
public class ElementResource extends BaseResource<IElementService, Element> {

    @Value("${useLocalCache:false}")
    private boolean useLocalCache;

    @Autowired
    IUserService userService;

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public ObjectResponse<List<Element>> getAuthorityElement(String menuId) {
        int userId = userService.getUserByUsername(getCurrentUserName()).getId();
        List<Element> elements = entityService.getAuthorityElementByUserId(userId + "", menuId);
        return new ObjectResponse<List<Element>>().data(elements);
    }

    @RequestMapping(value = "/user/menu", method = RequestMethod.GET)
    public ObjectResponse<List<Element>> getAuthorityElement() {
        int userId = userService.getUserByUsername(getCurrentUserName()).getId();
        List<Element> elements = entityService.getAuthorityElementByUserId(userId + "");
        return new ObjectResponse<List<Element>>().data(elements);
    }
}
