package life.gan.blogan.entity;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

public class User {
	private int id;
	
	@NotBlank
	@Size(min=3,max=16,message="{user.name.length.error}")
	private String name;
	
	@NotBlank
	@Size(min=8,max=16,message="{user.password.length.error}")
	private String password;
	
	@NotBlank
	@Email(message="{user.email.error}")
	private String email;
	
	private String bio;
	private String favoriteSection;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBio() {
		return bio;
	}
	public void setBio(String bio) {
		this.bio = bio;
	}
	public String getFavoriteSection() {
		return favoriteSection;
	}
	public void setFavoriteSection(String favoriteSection) {
		this.favoriteSection = favoriteSection;
	}
}
