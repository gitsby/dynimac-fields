package com.gitsby.dynamicfield.model;

import java.io.Serializable;

/**
 * Created by Kasyanov Maxim on 1/30/2017.
 */
public class Catalogue implements Serializable {

    private int id;

    private String name;

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
}
