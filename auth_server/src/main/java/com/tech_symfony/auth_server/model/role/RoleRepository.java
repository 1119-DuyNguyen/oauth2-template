package com.tech_symfony.auth_server.model.role;

import com.tech_symfony.auth_server.model.role.permission.Permission;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepository extends JpaRepository<Role, Integer> {
}
