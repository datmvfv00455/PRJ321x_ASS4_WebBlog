package vn.funix.prj321x.project4.dal.dao;

import vn.funix.prj321x.project4.core.dto.UserDto;
import vn.funix.prj321x.project4.dal.enity.UserEntity;

public interface UserDao extends GenericDao<UserEntity> {

	boolean authenticate(UserDto userDto);
}
