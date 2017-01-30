package com.gitsby.dynamicfield.model.mapper;

import com.gitsby.dynamicfield.model.Attribute;
import com.gitsby.dynamicfield.persistence.AttributeDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Kasyanov Maxim on 1/30/2017.
 */

@Component
public class AttributeMapper implements RowMapper<Attribute> {

    @Autowired
    private AttributeDao attributeDao;


    @Override
    public Attribute mapRow(ResultSet rs, int rowNum) throws SQLException {
        Attribute attribute = new Attribute();
        attribute.setId(rs.getInt("id"));
        attribute.setName(rs.getString("attname"));
        attribute.setType(rs.getString("attr_type"));
        if ("catalogue".equals(attribute.getType())) {
            attribute.setCatalogue(attributeDao.getCatalogueById(rs.getInt("catalogue_id")));
        }
        return attribute;
    }
}
