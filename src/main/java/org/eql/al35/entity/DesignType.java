package org.eql.al35.entity;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Id;
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
public class DesignType implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    private String label;

    @OneToMany(mappedBy = "designType")
    private Set<Design> designs;


}
