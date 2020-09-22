package com.donkeycode.data.service.imp;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.donkeycode.data.entity.GroupType;
import com.donkeycode.data.service.IGroupTypeService;
import com.github.skunk.data.BaseService;

/**
 * ${DESCRIPTION}
 *
 * @author wanghaobin
 * @create 2017-06-12 8:48
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class GroupTypeService extends BaseService<GroupType> implements IGroupTypeService {

}
