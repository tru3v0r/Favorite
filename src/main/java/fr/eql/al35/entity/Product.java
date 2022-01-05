package fr.eql.al35.entity;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Product implements Serializable {

    private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue (strategy=GenerationType.IDENTITY)
	private Integer id;
	private String name;
	private String reference;
	private LocalDateTime refCreationDate;
	private LocalDateTime refDeletionDate;
	private String description;
	private Double price;
	private Integer quantity;

	@OneToMany(mappedBy = "product")
	private Set<Stock> stocks;

	@ManyToOne
	@JoinColumn(name = "product_type_name")
	private ProductType productType;

	@OneToMany(mappedBy = "product")
	private Set<Article> articles;

	@ManyToMany(mappedBy = "products", fetch = FetchType.EAGER)
	private Set<Photo> photos;


}
