package com.donkeycode.vo;

import java.util.List;

import com.donkeycode.data.entity.User;

import lombok.Getter;
import lombok.Setter;

/**
 * Created by Ace on 2017/6/18.
 */
@Setter
@Getter
public class GroupUsers {

    private List<User> members;
    private List<User> leaders;

    public GroupUsers() {
    }

    public GroupUsers(List<User> members, List<User> leaders) {
        this.members = members;
        this.leaders = leaders;
    }

}
