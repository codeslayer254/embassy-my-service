package com.busyunit.embassy.service.model;

import com.fasterxml.jackson.annotation.JsonBackReference;

import java.io.Serializable;
import java.util.UUID;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;
import org.hibernate.annotations.Type;

@Entity
@Table(name = "EMPLOYEE")
@Getter
@Setter
public class Employee implements Serializable {

    @Id
    @GeneratedValue(generator = "UUID")
    @GenericGenerator(
            name = "UUID",
            strategy = "org.hibernate.id.UUIDGenerator",
            parameters = {
                    @Parameter(
                            name = "uuid_gen_strategy_class",
                            value = "org.hibernate.id.uuid.CustomVersionOneStrategy"
                    )
            }
    )
    @Column(name = "id", updatable = false, nullable = false)
    private UUID id;

    @Column(name = "TITLE")
    private String title;

    @Column(name = "NAME", nullable = false)
    private String name;

    @Column(name = "SURNAME", nullable = false)
    private String surname;

    @Column(name = "EMPLOYEE_TITLE", nullable = false)
    private String employeeTitle ;

    @Column(name = "BIO")
    private String bio;

    @Column(name = "IMAGE_NAME")
    private String imageName;

    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "ADDRESS_ID")
    private Address address;

    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JsonBackReference
    @JoinColumn(name = "CATEGORY_ID")
    private Category category;

    @Column(name = "EXTENSION")
    @Type(type = "com.busyunit.embassy.service.model.ExtensionUserType")
    private Extension extension;

    @ManyToOne(fetch = FetchType.LAZY)
    @JsonBackReference
    private Department department;
}
