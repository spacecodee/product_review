package com.spacecodee.products_review.dao.model;

import lombok.*;

import javax.persistence.*;

@Table(name = "review")
@ToString
@Entity
public class Review {

    @Id
    @Column(name = "id_review")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Getter
    @Setter
    private Long id;

    @Column(name = "review")
    @Getter
    @Setter
    private double review;

}
