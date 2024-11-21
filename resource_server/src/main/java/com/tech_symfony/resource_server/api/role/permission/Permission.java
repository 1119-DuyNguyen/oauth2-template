package com.tech_symfony.resource_server.api.role.permission;

import com.tech_symfony.resource_server.system.model.NamedEntity;
import jakarta.persistence.*;
import lombok.*;


@Entity
@Table(name = "permissions")
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class Permission extends NamedEntity {


	@Column(name = "description", length = Integer.MAX_VALUE)
	private String description;

}
