package com.spacecodee.products_review.dao;

import com.spacecodee.products_review.dao.model.Item;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import java.util.List;

@EnableJpaRepositories
public interface IItemRepository extends JpaRepository<Item, Long> {

    @Query(
            value = "SELECT p.product_name, r.review " +
                    "FROM item i " +
                    "         INNER JOIN review r on i.id_review = r.id_review" +
                    "         INNER JOIN product p on i.id_product = p.id_product" +
                    "WHERE r.review < ?1 " +
                    "ORDER BY r.review",
            nativeQuery = true
    )
    List<Item> findItemsWithAverageRatingLowerThan(Double rating);
}
