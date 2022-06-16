package com.spacecodee.products_review.dao.model;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

@Table(name = "item")
@ToString
@Entity
public class Item implements Serializable {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Getter
    @Setter
    private Long id;

    @Column(name = "item_name")
    @Getter
    @Setter
    private String itemName;

    @OneToMany(targetEntity = Review.class, cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    @JoinColumn(name = "id_review", referencedColumnName = "id_review")
    @Getter
    @Setter
    private Set<Review> idReview;

    @OneToMany(targetEntity = User.class, cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    @JoinColumn(name = "id_user", referencedColumnName = "id_user")
    @Getter
    @Setter
    private Set<Review> idUser;
}
