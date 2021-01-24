package vn.funix.prj321x.project4.dal.daoImpl;

import vn.funix.prj321x.project4.dal.dao.PostDao;
import vn.funix.prj321x.project4.dal.enity.PostEntity;

public class PostDaoImpl extends GenericDaoImpl<PostEntity> implements PostDao {

	public PostDaoImpl() {
		super(PostEntity.class);
	}

}
