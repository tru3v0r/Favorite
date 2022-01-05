package org.eql.al35.entity;

import java.io.Serializable;
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
public class Design implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String name;
    private Integer size;
    private String color;
    private Double price;

    @OneToMany(mappedBy = "design")
    private Set<Custom> customs;

    @ManyToMany(mappedBy = "designs", fetch = FetchType.EAGER)
    private Set<Photo> photos;

    @ManyToOne
    @JoinColumn(name = "design_type_label")
    private DesignType designType;


}
