package vn.funix.prj321x.project4.bll.service;

import vn.funix.prj321x.project4.core.dto.UserDto;

public interface UserService extends GenericService<UserDto> {

	public boolean authenticate(UserDto userDto);

}
