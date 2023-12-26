/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author 2021
 */
public class ProductOrder extends Product {
    private int quantity;
    private double totalprice;
	public ProductOrder(int quantity, double totalprice) {
		super();
		this.quantity = quantity;
		this.totalprice = totalprice;
	}
	public ProductOrder() {
		super();
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}
    

    
    
    
}
