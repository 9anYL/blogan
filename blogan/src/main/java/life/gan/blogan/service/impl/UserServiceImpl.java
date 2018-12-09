package life.gan.blogan.service.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import life.gan.blogan.dao.UserMapper;
import life.gan.blogan.entity.User;
import life.gan.blogan.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	public void addUser(User user) {
		userMapper.insert(user);
	}

	public void modifyUser(User user) {
		userMapper.updateById(user);
	}
	public List<User> getAllUsers(){
		return userMapper.selectAll();
	}

	public User getUserByUserName(String username) {
		return userMapper.selectUserByUserName(username);
	}
	
	public User getUserById(int id) {
		return userMapper.selectUserByUserId(id);
	}

	public Set<String> getRolesByUserName(String username) {
		return userMapper.selectRolesByUserName(username);
	}

	public Set<String> getPermissionsByUserName(String username) {
		Set<String> permissions = new HashSet<String>();
		Set<String> rolenames = userMapper.selectRolesByUserName(username);
		for (String rolename : rolenames) {
			Set<String> permissionNames = userMapper.selectPermissionsByRoleName(rolename);
			for (String permissionName : permissionNames) {
				permissions.add(permissionName);
			}
		}
		return permissions;
	}



}
