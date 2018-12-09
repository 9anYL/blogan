package life.gan.blogan.dao;

import java.util.List;
import java.util.Set;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import life.gan.blogan.entity.User;

public interface UserMapper {
	/**
	 * 新增用户
	 * @param 用户实例
	 * @return 插入行数
	 */
	@Insert("INSERT INTO user (name,password,email) VALUES(#{name},#{password},#{email})")
	@Options(useGeneratedKeys=true,keyProperty="id")
	public int insert(User user);
	/**
	 * 查询所有用户
	 * @return 用户列表
	 */
	@Select("SELECT * FROM user")
	public List<User> selectAll();
	/**
	 * 根据用户名称查询用户
	 * @param 用户名称
	 * @return 用户实例
	 */
	@Select("SELECT * FROM user WHERE name=#{username}")
	@ResultMap("userResultMap")
	public User selectUserByUserName(String username);
	/**
	 * 根据用户名称查询用户所拥有的角色
	 * @param 用户名称
	 * @return 该用户所拥有的角色名称集
	 */
	@Select("SELECT r.name FROM user u,role r,user_role ur WHERE ur.user_id=u.id AND ur.role_id=r.id AND u.name=#{username}")
	public Set<String> selectRolesByUserName(String username);
	/**
	 * 根据角色名称查询角色所拥有的权限
	 * @param 角色名称
	 * @return 该角色所拥有的权限名称集
	 */
	@Select("SELECT p.name FROM role r,permission p,role_permission rp WHERE rp.role_id=r.id AND rp.permission_id=p.id AND r.name=#{rolename}")
	public Set<String> selectPermissionsByRoleName(String rolename);
	/**
	 * 根据id修改用户信息
	 * @param id
	 */
	public int updateById(User user);
	/**
	 * 根据id查询用户
	 * @param id
	 * @return
	 */
	@Select("SELECT * FROM user WHERE name=#{id}")
	public User selectUserByUserId(int id);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
