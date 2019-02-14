package com.busyunit.embassy.service.model;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;
import org.hibernate.annotations.Type;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;
import java.util.UUID;

@Entity
@Table(name = "EVENT")
@Getter
@Setter
public class Event implements Serializable {

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

    @Column(name="START_DATE", nullable = false)
    private Date startDate = new Date();

    @Column(name="END_DATE", nullable = false)
    private Date endDate = new Date();

    @Column(name = "EVENT_BANNER")
    private String eventBanner;

    @Column(name = "WEBSITE", nullable = false)
    private String website;

    @Lob
    @Type(type = "org.hibernate.type.TextType")
    @Column(name="BODY", nullable = false)
    private String body;

    @Column(name = "LOCATION")
    private String location; // Todo: Consider Loction Services using Geospatial

    @Column(name = "EXTENSION")
    @Type(type = "com.busyunit.embassy.service.model.ExtensionUserType")
    private Extension extension;


    @Column(name="DATE_PUBLISHED", nullable = false)
    private Date datePublished = new Date();
}