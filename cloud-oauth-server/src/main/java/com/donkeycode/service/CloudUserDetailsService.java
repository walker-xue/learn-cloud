package com.donkeycode.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.donkeycode.core.response.ResultBody;
import com.donkeycode.data.entity.UserAccount;
import com.donkeycode.security.CloudUserDetails;

import lombok.extern.slf4j.Slf4j;

/**
 * Security用户信息获取实现类
 *
 * @author liuyadu
 */
@Slf4j
@Service("userDetailService")
public class CloudUserDetailsService implements UserDetailsService {

    @Autowired
    BaseUserService baseUserServiceClient;
    @Autowired
    OpenOAuth2ClientProperties clientProperties;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        ResultBody<UserAccount> resp = baseUserServiceClient.userLogin(username);
        UserAccount account = resp.getData();
        if (account == null || account.getAccountId() == null) {
            throw new UsernameNotFoundException("系统用户 " + username + " 不存在!");
        }
        String domain = account.getDomain();
        Long accountId = account.getAccountId();
        Long userId = account.getUserId();
        String password = account.getPassword();
        String nickName = account.getNickName();
        String avatar = account.getAvatar();
        String accountType = account.getAccountType();
        boolean accountNonLocked = account.getStatus().intValue() != BaseConstants.ACCOUNT_STATUS_LOCKED;
        boolean credentialsNonExpired = true;
        boolean enabled = account.getStatus().intValue() == BaseConstants.ACCOUNT_STATUS_NORMAL ? true : false;
        boolean accountNonExpired = true;
        CloudUserDetails userDetails = new CloudUserDetails();
        userDetails.setDomain(domain);
        userDetails.setAccountId(accountId);
        userDetails.setUserId(userId);
        userDetails.setUsername(username);
        userDetails.setPassword(password);
        userDetails.setNickName(nickName);
        userDetails.setAuthorities(account.getAuthorities());
        userDetails.setAvatar(avatar);
        userDetails.setAccountId(accountId);
        userDetails.setAccountNonLocked(accountNonLocked);
        userDetails.setAccountNonExpired(accountNonExpired);
        userDetails.setAccountType(accountType);
        userDetails.setCredentialsNonExpired(credentialsNonExpired);
        userDetails.setEnabled(enabled);
        userDetails.setClientId(clientProperties.getOauth2().get("admin").getClientId());
        return userDetails;
    }
}
