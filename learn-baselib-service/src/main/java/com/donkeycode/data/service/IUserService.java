package com.donkeycode.data.service;

import com.donkeycode.data.entity.User;
import com.github.skunk.data.IBaseService;

public interface IUserService extends IBaseService<User> {

    void addUser(User entity);


    void updateSelectiveById(User entity);

    /**
     * 根据用户名获取用户信息
     *
     * @param username
     * @return
     */
    User getUserByUsername(String username);

}
