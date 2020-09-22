package com.donkeycode.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.donkeycode.data.entity.GroupType;
import com.donkeycode.data.service.IGroupTypeService;

/**
 * ${DESCRIPTION}
 *
 * @author wanghaobin
 * @create 2017-06-08 11:51
 */
@RestController
@RequestMapping("groupType")
public class GroupTypeResource extends BaseResource<IGroupTypeService, GroupType> {
}
