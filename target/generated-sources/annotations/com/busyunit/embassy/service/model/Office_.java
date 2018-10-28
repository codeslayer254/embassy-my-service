package com.busyunit.embassy.service.model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Office.class)
public abstract class Office_ {

	public static volatile SingularAttribute<Office, Address> address;
	public static volatile SingularAttribute<Office, String> name;
	public static volatile SingularAttribute<Office, Long> id;
	public static volatile SingularAttribute<Office, Department> department;

}

