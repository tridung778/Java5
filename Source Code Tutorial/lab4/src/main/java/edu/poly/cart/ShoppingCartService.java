package edu.poly.cart;

import java.util.Collection;

import edu.poly.model.Item;

public interface ShoppingCartService {
	
	Item add(Integer id);
	
	Item update(Integer id, int qty);
	
	void remove(Integer id);
	
	void clear();
	
	Collection<Item> getItems();
	
	int getCount();
	
	double getAmount();
	
}
