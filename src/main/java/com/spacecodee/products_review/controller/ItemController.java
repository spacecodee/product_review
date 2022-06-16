package com.spacecodee.products_review.controller;

import com.spacecodee.products_review.dao.model.Item;
import com.spacecodee.products_review.service.ItemService;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:4200/")
public class ItemController {

    private final ItemService itemService;

    public ItemController(ItemService itemService) {
        this.itemService = itemService;
    }

    @CrossOrigin(origins = "http://localhost:4200")
    @GetMapping(value = "/list")
    public List<Item> getTitles() {
        return this.itemService.getTitles();
    }

    @CrossOrigin(origins = "http://localhost:4200")
    @GetMapping(value = "/titles/{rating}")
    public List<String> getTitles(@PathVariable(name = "rating") Double rating) {
        if (rating < 0) return Collections.singletonList("No existe valor");
        if (rating > 5) return Collections.singletonList("Excede el valor");

        return this.itemService.getTitles(rating);
    }
}
