package com.gitsby.dynamicfield.persistence.impl;

import com.gitsby.dynamicfield.persistence.GenericDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;

/**
 * Created by Kasyanov Maxim on 10.08.2016.
 */
public abstract class GenericDaoImpl implements GenericDao {

    @Value("${scheme.name}")
    public String scheme;

    private JdbcTemplate jdbcTemplate;

    @Autowired
    @Override
    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public JdbcTemplate getJdbcTemplate() {
        return this.jdbcTemplate;
    }
}
