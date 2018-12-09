package life.gan.blogan.service;

import java.util.List;
import java.util.Set;

import life.gan.blogan.entity.User;

public interface UserService {
	/**
	 * 新增用户
	 * @param user
	 * @return
	 */
	public void addUser(User user);
	/**
	 * 修改用户
	 * @param user
	 */
	public void modifyUser(User user);
	/**
	 * 查询所有用户
	 * @return
	 */
	public List<User> getAllUsers();
	/**
	 * 查询用户
	 * @param username
	 * @return
	 */
	public User getUserByUserName(String username);
	/**
	 * 查询用户
	 * @param id
	 * @return
	 */
	public User getUserById(int id);
	/**
	 * 查询用户角色
	 * @param username
	 * @return
	 */
	public Set<String> getRolesByUserName(String username);
	/**
	 * 查询用户权限
	 * @param username
	 * @return
	 */
	public Set<String> getPermissionsByUserName(String username);
	
	
	
}
