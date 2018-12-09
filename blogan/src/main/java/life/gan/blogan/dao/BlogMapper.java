package life.gan.blogan.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import life.gan.blogan.entity.Blog;

public interface BlogMapper {
	
	@Select("SELECT * FROM blog WHERE user_id=#{userId}")
	public List<Blog> selectBlogByUserId(int userId);
	
	@Insert("INSERT INTO blog (title,user_id) VALUES (#{title},#{userId})")
	@Options(useGeneratedKeys=true,keyProperty="id")
	public int insertBlog(Blog blog);
}
