package com.busyunit.embassy.service.model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Address.class)
public abstract class Address_ {

	public static volatile SingularAttribute<Address, String> zipCode;
	public static volatile SingularAttribute<Address, String> street;
	public static volatile SingularAttribute<Address, String> houseNumber;
	public static volatile SingularAttribute<Address, Long> id;

}

