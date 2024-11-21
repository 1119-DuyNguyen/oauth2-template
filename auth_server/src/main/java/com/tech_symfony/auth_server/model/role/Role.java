package com.tech_symfony.auth_server.model.role;


import com.tech_symfony.auth_server.model.NamedEntity;
import com.tech_symfony.auth_server.model.role.permission.Permission;
import jakarta.persistence.*;
import lombok.*;

import java.util.Set;


@Entity
@Table(name = "roles")
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Role extends NamedEntity {

	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(
		name = "role_permission",
		joinColumns = @JoinColumn(name = "role_id"),
		inverseJoinColumns = @JoinColumn(name = "permission_id")
	)
	private Set<Permission> permissions;

}
