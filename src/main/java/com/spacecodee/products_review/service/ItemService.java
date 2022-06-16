package com.spacecodee.products_review.service;

import com.spacecodee.products_review.dao.IItemRepository;
import com.spacecodee.products_review.dao.model.Item;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ItemService {

    private final IItemRepository iItemRepository;

    public ItemService(IItemRepository iItemRepository) {
        this.iItemRepository = iItemRepository;
    }

    public List<Item> getTitles() {
        return this.iItemRepository.findAll();
    }

    public List<String> getTitles(Double rating) {
        List<String> listTitles = new ArrayList<>();
        List<Item> itemList = this.iItemRepository.findItemsWithAverageRatingLowerThan(rating);

        for (Item item : itemList) {
            System.out.println("item = " + item);
            if (item.getIdReview() == null) {
                item.getIdReview().setReview(0);
            }

            listTitles.add(item.getItemName());
        }

        System.out.println("listTitles = " + listTitles);

        return listTitles;
    }
}
