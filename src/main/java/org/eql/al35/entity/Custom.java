package org.eql.al35.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Custom implements Serializable {

    private static final long serialVersionUID = 1L;


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private Double price;

    @ManyToOne
    @JoinColumn(name = "product_type_location_id")
    private ProductTypeLocation productTypeLocation;

    @ManyToOne
    @JoinColumn(name = "design_id")
    private Design design;

    @ManyToOne
    @JoinColumn(name = "article_id")
    private Article article;


    public Custom(Double price, ProductTypeLocation productTypeLocation, Design design) {
        super();
        this.price = price;
        this.productTypeLocation = productTypeLocation;
        this.design = design;
    }

}
