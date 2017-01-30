package com.gitsby.dynamicfield.controller;

import com.gitsby.dynamicfield.model.Attribute;
import com.gitsby.dynamicfield.persistence.AttributeDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by Kasyanov Maxim on 1/28/2017.
 */
@RestController
public class ApplicationController {

    @Autowired
    private AttributeDao attributeDao;

    @GetMapping(value = "/test")
    public ResponseEntity<List<Attribute>> getDynimicBean() throws SQLException {

        return new ResponseEntity<>(attributeDao.getApplicationFieldsBy(0), HttpStatus.OK);
//        return new ResponseEntity<>(null, HttpStatus.OK);
    }
}
