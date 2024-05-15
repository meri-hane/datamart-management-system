package com.example.demo.model;
import java.time.LocalDate;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Column;



@Entity 
@Table(name="employees_table")
public class Employee {

	
	public Employee() {}
	
	public Employee(String product, long price, LocalDate productivity, long item, String category, String designation,
			LocalDate expiry) {
		super();
		this.product = product;
		this.price = price;
		this.productivity = productivity;
		this.item = item;
		this.category = category;
		this.designation = designation;
		this.expiry = expiry;
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@Column(name="prod_name")
	private String product;
	
	@Column(name="price")
	private long price;
	
	@Column(name="productivity")
	private LocalDate productivity;
	
	@Column(name="item")
	private long item;
	
	@Column(name="category")
	private String category;
	
	@Column(name="des")
	private String designation;
	
	@Column(name="expiry")
	private LocalDate expiry;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}


	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}


//////////////////
	public long getPrice() {
		return price;
	}
	public void setPrice(long price) {
		this.price = price;
	}

	///////////////////////
	public LocalDate getProductivity() {
		return productivity;
	}
	public void setProductivity(LocalDate productivity) {
		this.productivity = productivity;
	}


	////////////////////
	public long getItem() {
		return item;
	}
	public void setItem(long item) {
		this.item = item;
	}
	//////////////////////

	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}

	////////////////////////////
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public LocalDate getExpiry() {
		return expiry;
	}
	public void setExpiry(LocalDate expiry) {
		this.expiry = expiry;
	}
	
	
	
}
