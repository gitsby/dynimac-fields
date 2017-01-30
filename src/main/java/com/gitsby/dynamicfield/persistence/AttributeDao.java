package com.gitsby.dynamicfield.persistence;

import com.gitsby.dynamicfield.model.Attribute;
import com.gitsby.dynamicfield.model.Catalogue;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by Kasyanov Maxim on 1/29/2017.
 */
public interface AttributeDao extends GenericDao {

    List<Attribute> getApplicationFieldsBy(int id) throws SQLException;

    List<Catalogue> getCatalogueById(int id);
}
