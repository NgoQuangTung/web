/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author 2021
 */
public class Product {
    private String id,name,unit,brand,image, tblcategoryid;
    private double discount, vote,price;
    private  int sold;
    public  Product ()

    {
        
    }
      public Product(String id, double vote, String name, String unit, String brand,  int sold, double discount, double price, String image, String tblcategoryid) {
        this.id = id;
        this.name = name;
        this.unit = unit;
        this.brand = brand;
        this.image = image;
        this.discount = discount;
        this.vote = vote;
        this.price = price;
        this.sold = sold;
        this.tblcategoryid = tblcategoryid;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public double getVote() {
        return vote;
    }

    public void setVote(double vote) {
        this.vote = vote;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getSold() {
        return sold;
    }

    public void setSold(int sold) {
        this.sold = sold;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", unit=" + unit + ", brand=" + brand + ", image=" + image + ", discount=" + discount + ", vote=" + vote + ", price=" + price + ", sold=" + sold + '}';
    }
	public String getTblcategoryid() {
		return tblcategoryid;
	}
	public void setTblcategoryid(String tblcategoryid) {
		this.tblcategoryid = tblcategoryid;
	}

 

}
