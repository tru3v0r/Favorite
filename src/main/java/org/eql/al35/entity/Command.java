package org.eql.al35.entity;

import java.io.Serializable;
import java.time.LocalDateTime;
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
public class Command implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue (strategy=GenerationType.IDENTITY)
	private Integer id;
	private String reference;
	private LocalDateTime creationDate;
	private LocalDateTime shippingDate;
	private LocalDateTime deliveryDate;
	private LocalDateTime cancelDate;
	private LocalDateTime returnDate;
	private LocalDateTime deliveryReturnDate;
	private Double taxInPrice;
	private Double taxOutPrice;

	@ManyToOne
	@JoinColumn(name = "status_id")
	private Status status;

	@ManyToOne
	@JoinColumn(name = "pay_mode_id")
	private PayMode payMode;

	@ManyToOne
	@JoinColumn(name = "vat_id")
	private Vat vat;

	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;

	@ManyToOne (cascade=CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name="delivery_address_id")
	private Address deliveryAddress;

	@ManyToOne (cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name="facturation_address_id")
	private Address facturationAddress;

	@OneToMany(mappedBy = "command")
	private Set<Article> articles;

}
