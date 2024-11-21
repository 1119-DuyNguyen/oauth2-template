package com.tech_symfony.resource_server.api.role;

import com.tech_symfony.resource_server.api.role.viewmodel.RoleListVm;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface RoleMapper {

	RoleListVm entityToRoleListVm(Role role);

}
