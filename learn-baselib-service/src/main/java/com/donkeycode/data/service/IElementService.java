package com.donkeycode.data.service;

import java.util.List;
import java.util.Map;

import com.donkeycode.data.entity.Element;
import com.github.skunk.data.IBaseService;

public interface IElementService extends IBaseService<Element> {

    List<Element> getAuthorityElementByUserId(String userId);

    List<Element> getAuthorityElementByUserId(String userId, String menuId);

    List<Element> getAllElementPermissions();

    void save(Element entity);

    void updateSelectiveById(Element entity);

    List<Element> getList(Map<String, String> param);

}
