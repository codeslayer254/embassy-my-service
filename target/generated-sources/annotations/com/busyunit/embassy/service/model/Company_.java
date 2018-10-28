package com.busyunit.embassy.service.model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Company.class)
public abstract class Company_ {

	public static volatile SetAttribute<Company, Car> cars;
	public static volatile SingularAttribute<Company, String> name;
	public static volatile SingularAttribute<Company, Long> id;
	public static volatile SetAttribute<Company, Department> departments;

}

