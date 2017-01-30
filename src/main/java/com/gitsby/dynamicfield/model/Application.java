package com.gitsby.dynamicfield.model;

import java.util.List;

/**
 * Created by Kasyanov Maxim on 1/30/2017.
 */
public class Application {

    private int id;

    private List<Attribute> attribute;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<Attribute> getAttribute() {
        return attribute;
    }

    public void setAttribute(List<Attribute> attribute) {
        this.attribute = attribute;
    }
}
