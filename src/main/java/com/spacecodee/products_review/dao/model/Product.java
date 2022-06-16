package com.spacecodee.products_review.dao.model;

import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "product")
@ToString
@Entity
public class Product {
    @Id
    @Column(name = "id_product", nullable = false)
    private Long id;
}
