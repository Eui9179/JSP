package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	
	public ProductRepository() {
		Product phone = new Product("p1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1334x750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		
		Product notebook = new Product("p1235", "LG PC 그램", 1500000);
		notebook.setDescription("13.3-inch, IPS LED HD display, 5rd Generation Intel Core processors");
		notebook.setCategory("Note Book");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("New");
		
		Product tablet = new Product("P1236", "Galaxy Tab 5", 900000);
		tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("New");
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
	}
	public Product getProductById(String productId) {
		Product productById = null;
		
		for (int i=0; i<listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null 
				&& product.getProductId() != null 
				&& product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}
}
