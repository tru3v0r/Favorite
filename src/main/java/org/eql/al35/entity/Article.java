package org.eql.al35.entity;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter @Setter @NoArgsConstructor @AllArgsConstructor
@Entity
public class Article implements Serializable {

	private static final long serialVersionUID = 1L;



	@Id
	@GeneratedValue (strategy=GenerationType.IDENTITY)
	private Integer id;
	private Integer quantity;
	private Double price;

	@ManyToOne
	@JoinColumn(name = "product_id")
	private Product product;

	@OneToMany(mappedBy = "article", cascade=CascadeType.ALL, fetch = FetchType.EAGER)
	private Set<Custom> customs;

	@ManyToOne
	@JoinColumn(name = "size_label")
	private Size size;

	@ManyToOne
	@JoinColumn(name = "command_id")
	private Command command;

	public Article(Integer quantity, Double price, Product product, Set<Custom> customs, Size size, Command command) {
		super();
		this.quantity = quantity;
		this.price = price;
		this.product = product;
		this.customs = customs;
		this.size = size;
		this.command = command;
	}



}
