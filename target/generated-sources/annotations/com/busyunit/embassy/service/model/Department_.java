package com.busyunit.embassy.service.model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Department.class)
public abstract class Department_ {

	public static volatile SetAttribute<Department, Office> offices;
	public static volatile SingularAttribute<Department, String> name;
	public static volatile SingularAttribute<Department, Company> company;
	public static volatile SingularAttribute<Department, Long> id;
	public static volatile SetAttribute<Department, Employee> employees;

}

