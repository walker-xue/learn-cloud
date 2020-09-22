package com.donkeycode.data.service.imp;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.donkeycode.data.entity.ResourceAuthority;
import com.donkeycode.data.service.IResourceAuthorityService;
import com.github.skunk.data.BaseService;

/**
 * Created by Ace on 2017/6/19.
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class ResourceAuthorityService extends BaseService<ResourceAuthority> implements IResourceAuthorityService {
}
