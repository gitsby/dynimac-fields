package com.gitsby.dynamicfield.model;

import com.fasterxml.jackson.annotation.JsonInclude;

import java.util.List;

/**
 * Created by Kasyanov Maxim on 1/30/2017.
 */
public class Attribute {

    private int id;

    private String name;

    private String type;

    @JsonInclude(JsonInclude.Include.NON_NULL)
    private List<Catalogue> catalogue;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public List<Catalogue> getCatalogue() {
        return catalogue;
    }

    public void setCatalogue(List<Catalogue> catalogue) {
        this.catalogue = catalogue;
    }
}
