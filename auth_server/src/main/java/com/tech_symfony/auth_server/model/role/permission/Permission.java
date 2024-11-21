package com.tech_symfony.auth_server.model.role.permission;

import com.tech_symfony.auth_server.model.NamedEntity;
import jakarta.persistence.*;
import lombok.*;


@Entity
@Table(name = "permissions")
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Permission extends NamedEntity {

	@Column(name = "description", length = Integer.MAX_VALUE)
	private String description;

}
