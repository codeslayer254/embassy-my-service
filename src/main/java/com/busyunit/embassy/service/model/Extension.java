package com.busyunit.embassy.service.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Map;

@Data
@ToString
public class Extension implements Serializable {
    /**
     *
     */
    private static final long serialVersionUID = -1633548831963344452L;
    private Map<String,Object> data;


}
