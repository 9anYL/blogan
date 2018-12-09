package life.gan.blogan.util;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import life.gan.blogan.entity.User;
import life.gan.blogan.service.UserService;

public class MyRealm extends AuthorizingRealm{

	@Autowired
	private UserService userService;
	
	private static final Logger logger = LoggerFactory.getLogger(MyRealm.class);
	/**
	 * 授权
	 * @param principals
	 * @return
	 */
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		logger.info("--------授权开始--------");
		String username = (String) principals.getPrimaryPrincipal();
		SimpleAuthorizationInfo authorizationInfo=new SimpleAuthorizationInfo();
        authorizationInfo.setRoles(userService.getRolesByUserName(username));
        authorizationInfo.setStringPermissions(userService.getPermissionsByUserName(username));
        return authorizationInfo;
	}
	/**
	 * 认证
	 * @param token
	 */
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		logger.info("--------用户认证开始--------");
		String username = (String) token.getPrincipal();
		User user = userService.getUserByUserName(username);
		if(user == null) {
			throw new UnknownAccountException();
		}
		SimpleAuthenticationInfo authInfo=new SimpleAuthenticationInfo(username,user.getPassword(),getName());
        return authInfo;
	}
	
	
}
