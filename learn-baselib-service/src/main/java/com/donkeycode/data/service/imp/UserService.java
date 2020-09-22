package com.donkeycode.data.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.donkeycode.core.consts.UserConstant;
import com.donkeycode.data.entity.User;
import com.donkeycode.data.mapper.UserMapper;
import com.donkeycode.data.service.IUserService;
import com.github.skunk.data.BaseService;

/**
 * 用户服务
 *
 * @author yanjun.xue
 * @since 2019年6月28日
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class UserService extends BaseService<User> implements IUserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public void addUser(User entity) {
        String password = new BCryptPasswordEncoder(UserConstant.PW_ENCORDER_SALT).encode(entity.getPassword());
        entity.setPassword(password);
        super.insertSelective(entity);
    }

    @CacheEvict(value = "user{1.username}")
    @Override
    public void updateSelectiveById(User entity) {
        mapper.updateByPrimaryKeySelective(entity);
    }

    /**
     * 根据用户名获取用户信息
     *
     * @param username
     * @return
     */
    @Cacheable(key = "user{1}")
    @Override
    public User getUserByUsername(String username) {
        User user = new User();
        user.setUsername(username);
        return mapper.selectOne(user);
    }

}
