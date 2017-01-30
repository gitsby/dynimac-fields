package com.gitsby.dynamicfield.persistence.impl;

import com.gitsby.dynamicfield.model.Attribute;
import com.gitsby.dynamicfield.model.Catalogue;
import com.gitsby.dynamicfield.model.mapper.AttributeMapper;
import com.gitsby.dynamicfield.persistence.AttributeDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Kasyanov Maxim on 1/29/2017.
 */
@Repository
public class AttributeDaoImpl extends GenericDaoImpl implements AttributeDao {

    @Autowired
    private AttributeMapper attributeMapper;
    @Override
    public List<Attribute> getApplicationFieldsBy(int id) throws SQLException {

        final String query = "select a.id, at.trans as attname, tt.trans as attr_type\n" +
                ", ct.id as catalogue_id\n" +
                "from attribute a join type t\n" +
                "on a.type_id = t.id\n" +
                "join type_trans tt\n" +
                "on t.id = tt.id\n" +
                "join attributes_trans at\n" +
                "on a.id = at.id\n" +
                "left join catalogue_type ct " +
                "on a.catalogue_type = ct.id " +
                "where tt.lang = 'ru';";
       return getJdbcTemplate().query(query, attributeMapper);
    }


    @Override
    public List<Catalogue> getCatalogueById(int id) {

        final String query = "SELECT\n" +
                "\tcc. ID,\n" +
                "\tcct.trans AS\n" +
                "VALUE\n" +
                "\n" +
                "FROM\n" +
                "\tATTRIBUTE A\n" +
                "JOIN TYPE T ON A .type_id = T . ID\n" +
                "JOIN type_trans tt ON T . ID = tt. ID\n" +
                "JOIN attributes_trans AT ON A . ID = AT . ID\n" +
                "LEFT JOIN catalogue_type C ON A .catalogue_type = C . ID\n" +
                "LEFT JOIN catalogue_type_trans ct ON C . ID = ct. ID\n" +
                "LEFT JOIN catalogue cc ON C . ID = cc.type_id\n" +
                "LEFT JOIN catalogue_trans cct ON cc. ID = cct. ID\n" +
                "WHERE\n" +
                "\ttt.trans = 'catalogue'\n" +
                "AND tt.lang = ct.lang\n" +
                "AND tt.lang = 'ru'\n" +
                "and c.id = ?;";
        return  getJdbcTemplate().query(query, new Object[]{id}, rs -> {
            List<Catalogue> catalogues = new ArrayList<>();
            while(rs.next()){
                Catalogue catalogue = new Catalogue();
                catalogue.setId(rs.getInt("ID"));
                catalogue.setName( rs.getString("VALUE"));
                catalogues.add(catalogue);
            }
            return catalogues;
        });
    }
}