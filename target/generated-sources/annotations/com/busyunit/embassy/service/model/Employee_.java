package com.busyunit.embassy.service.model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Employee.class)
public abstract class Employee_ {

	public static volatile SingularAttribute<Employee, Address> address;
	public static volatile SingularAttribute<Employee, String> surname;
	public static volatile SingularAttribute<Employee, String> name;
	public static volatile SingularAttribute<Employee, Long> id;
	public static volatile SingularAttribute<Employee, Department> department;

}

