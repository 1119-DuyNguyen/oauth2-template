package com.tech_symfony.resource_server.api.role;

import com.tech_symfony.resource_server.api.role.viewmodel.RoleListVm;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

public interface RoleService {
    List<RoleListVm> findAll();

}

@Service
@RequiredArgsConstructor
class DefaultRoleService implements RoleService {

    private final RoleRepository roleRepository;
    private final RoleMapper roleMapper;

    @Override
    public List<RoleListVm> findAll() {
        return roleRepository.findAll().stream()
                .map(roleMapper::entityToRoleListVm)
                .collect(Collectors.toList());
    }

}
