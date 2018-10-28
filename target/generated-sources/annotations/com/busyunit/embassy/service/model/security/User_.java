package com.busyunit.embassy.service.model.security;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(User.class)
public abstract class User_ {

	public static volatile SingularAttribute<User, Boolean> accountLocked;
	public static volatile SingularAttribute<User, String> password;
	public static volatile SingularAttribute<User, Boolean> accountExpired;
	public static volatile SingularAttribute<User, Long> id;
	public static volatile SingularAttribute<User, Boolean> credentialsExpired;
	public static volatile SingularAttribute<User, Boolean> enabled;
	public static volatile CollectionAttribute<User, Authority> authorities;
	public static volatile SingularAttribute<User, String> username;

}

