package com.busyunit.embassy.service.model;


import com.busyunit.embassy.service.model.security.Authority;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;
import java.util.Date;

@Entity
@Table(name = "NAVIGATION", uniqueConstraints = {@UniqueConstraint(columnNames = {"TITLE"})})
@Getter
@Setter
@EqualsAndHashCode(of = "id")
public class Navigation implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID", updatable = false, nullable = false)
    private Long id;

    @Column(name = "TITLE", nullable = false)
    private String title;

    @Column(name = "IMAGE_NAME")
    private String imageName;

    @Column(name = "DESCRIPTION")
    private String description;

    @Lob
    @Type(type = "org.hibernate.type.TextType")
    @Column(name="BODY", nullable = false)
    private String body;

    @Column(name = "WRITER")
    private String writer;

    @Column(name = "ENABLED")
    private boolean enabled;

    @Column(name="DATE_PUBLISHED", nullable = false)
    private Date datePublished = new Date();

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "NAVIGATION_CATEGORIES", joinColumns = @JoinColumn(name = "NAVIGATION_ID", referencedColumnName = "ID"), inverseJoinColumns = @JoinColumn(name = "PAGE_CATEGORY_ID", referencedColumnName = "ID"))
    @OrderBy
    @JsonManagedReference
    private Collection<PageCategory> categories;
}
