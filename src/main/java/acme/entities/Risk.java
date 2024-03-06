
package acme.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Positive;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.Range;
import org.hibernate.validator.constraints.URL;

import acme.client.data.AbstractEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Risk extends AbstractEntity {
	// Serialisation identifier -----------------------------------------------

	private static final long	serialVersionUID	= 1L;

	// Attributes -------------------------------------------------------------
	@Pattern(regexp = "R-[0-9]{3}")
	@NotBlank
	@Column(unique = true)
	private String				reference;

	@Past
	@NotNull
	@Temporal(TemporalType.TIMESTAMP)
	private Date				identificationDate;

	@Positive
	private double				impact;

	@Range(min = 0, max = 1)
	@Digits(integer = 1, fraction = 2)
	private double				probability;

	@NotBlank
	@Length(max = 100)
	private String				description;

	@URL
	@Length(max = 255)
	private String				link;
	// Derived attributes -----------------------------------------------------


	@Transient
	public double value() {

		return this.getProbability() * this.getImpact();
	}

	// Relationships ----------------------------------------------------------

}
