package com.busyunit.embassy.service.model;


import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Map;

@Data
@ToString
public class Gallery implements Serializable {

    /**
     *
     */
    private static final long serialVersionUID = -1633547731963399952L;
    private Map<String,Object> data;
}
