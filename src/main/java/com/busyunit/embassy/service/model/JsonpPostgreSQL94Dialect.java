package com.busyunit.embassy.service.model;

import org.hibernate.dialect.PostgreSQL94Dialect;

import java.sql.Types;

public class JsonpPostgreSQL94Dialect extends PostgreSQL94Dialect {

    public JsonpPostgreSQL94Dialect() {
        this.registerColumnType(Types.JAVA_OBJECT, "jsonb");
    }

}
