
package com.tech_symfony.resource_server.system.model;

import jakarta.persistence.Column;
import jakarta.persistence.MappedSuperclass;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.experimental.SuperBuilder;

/**
 * Simple JavaBean domain object adds a name property to
 * <code>BaseEntity</code>. Used as
 * a base class for objects needing these properties.
 */
@MappedSuperclass
public abstract class NamedEntity extends BaseEntity {


	@Column
	@NotNull(message = "name must not be null")
	@NotBlank(message = "name must not be blank")
	protected String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
