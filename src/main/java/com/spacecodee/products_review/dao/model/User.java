package com.spacecodee.products_review.dao.model;

import lombok.*;

import javax.persistence.*;

@Table(name = "user")
@ToString
@Entity
public class User {

    @Id
    @Column(name = "id_user")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Getter
    @Setter
    private Long id;

    @Column(name = "first_name")
    @Getter
    @Setter
    private String firstName;

    @Column(name = "last_name")
    @Getter
    @Setter
    private String lastName;

    @Column(name = "user_name")
    @Getter
    @Setter
    private String userName;
}
