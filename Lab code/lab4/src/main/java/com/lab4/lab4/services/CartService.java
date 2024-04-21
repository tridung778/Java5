package com.lab4.lab4.services;

import com.lab4.lab4.entitys.Item;

import java.util.Collection;

public interface CartService {
    Item add(Integer id);

    Item update(Integer id, int qty);

    void remove(Integer id);

    void clear();

    Collection<Item> getItems();

    int getCount();

    double getAmount();
}
