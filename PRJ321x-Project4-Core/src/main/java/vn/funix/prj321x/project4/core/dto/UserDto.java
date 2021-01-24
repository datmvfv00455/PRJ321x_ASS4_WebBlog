package vn.funix.prj321x.project4.core.dto;

import java.io.Serializable;

import lombok.Data;

@Data
public class UserDto implements Serializable {

	private Integer userID;
	private String  userName;
	private String  userPassword;

}
