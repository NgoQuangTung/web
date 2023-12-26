package model;

import java.util.List;

public class Cart {
	private double totalmoney;
	private List<ProductOrder> items;
	
	public Cart() {
		super();
	}
	public Cart(double totalmoney, List<ProductOrder> items) {
		super();
		this.totalmoney = totalmoney;
		this.items = items;
	}
	public double getTotalmoney() {
		return totalmoney;
	}
	public void setTotalmoney(double totalmoney) {
		this.totalmoney = totalmoney;
	}
	public List<ProductOrder> getItems() {
		return items;
	}
	public void setItems(List<ProductOrder> items) {
		this.items = items;
	}
	
}
