package com.spacecodee.products_review.dao;

import com.spacecodee.products_review.dao.model.Item;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import java.util.List;

@EnableJpaRepositories
public interface IItemRepository extends JpaRepository<Item, Long> {

    @Query(
            value = "SELECT i.id, i.item_name, i.id_review, i.id_user " +
                    "FROM item i" +
                    "         INNER JOIN review r on i.id_review = r.id_review " +
                    "WHERE r.review < ?1 " +
                    "ORDER BY r.review",
            nativeQuery = true
    )
    List<Item> findItemsWithAverageRatingLowerThan(Double rating);
}
