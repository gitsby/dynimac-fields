package com.gitsby.dynamicfield.persistence;

import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;

/**
 * Created by Kasyanov Maxim on 1/29/2017.
 */
public interface GenericDao {
    void setDataSource(DataSource dataSource);

    JdbcTemplate getJdbcTemplate();
}
