package com.gitsby.dynamicfield.controller;

import org.apache.commons.beanutils.DynaBean;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Kasyanov Maxim on 1/28/2017.
 */
@RestController
public class ApplicationController {

    @GetMapping(value = "/")
    public ResponseEntity<DynaBean> getDynimicBean() {


        return null;
//        return new ResponseEntity<>(null, HttpStatus.OK);
    }
}
