package com.donkeycode.web;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.donkeycode.core.response.ObjectResponse;
import com.donkeycode.data.entity.Client;
import com.donkeycode.data.service.ServiceAuthService;

/**
 * @author ace
 * @create 2017/12/26.
 */
@RestController
@RequestMapping("service")
public class ServiceResource extends BaseResource<ServiceAuthService, Client> {

    @RequestMapping(value = "/{id}/client", method = RequestMethod.PUT)
    public ObjectResponse<String> modifyUsers(@PathVariable int id, String clients) {
        return new ObjectResponse<String>().rel(true);
    }

    @RequestMapping(value = "/{id}/client", method = RequestMethod.GET)
    public ObjectResponse<Client> getUsers(@PathVariable int id) {
        return new ObjectResponse<Client>().rel(true).data(entityService.selectByKey(id));
    }
}
