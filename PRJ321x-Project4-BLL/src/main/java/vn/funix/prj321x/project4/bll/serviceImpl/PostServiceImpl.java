package vn.funix.prj321x.project4.bll.serviceImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import vn.funix.prj321x.project4.bll.service.PostService;
import vn.funix.prj321x.project4.core.dto.PostDto;
import vn.funix.prj321x.project4.core.utils.ObjectUtils;
import vn.funix.prj321x.project4.dal.dao.PostDao;
import vn.funix.prj321x.project4.dal.enity.PostEntity;
import vn.funix.prj321x.project4.dal.utils.DaoUtil;

public class PostServiceImpl implements PostService {

	@Override
	public List<PostDto> getAll() {

		List<PostDto> result = new ArrayList<PostDto>();

		List<PostEntity> list = DaoUtil.getPostDaoInstance().getAll();

		list.forEach(entity -> {

			PostDto postDto = ObjectUtils.copyProperties(entity, PostDto.class);

			result.add(postDto);

		});

		return result;
	}

	@Override
	public void update(PostDto dto) {
		PostDao postDao = DaoUtil.getPostDaoInstance();

		PostEntity ennity = ObjectUtils.copyProperties(dto, PostEntity.class);

		postDao.update(ennity);
	}

	@Override
	public void save(PostDto dto) {
		PostDao postDao = DaoUtil.getPostDaoInstance();

		PostEntity ennity = ObjectUtils.copyProperties(dto, PostEntity.class);

		postDao.save(ennity);

	}

	@Override
	public PostDto findById(Integer id) {

		PostDto postDto = null;

		if (Objects.nonNull(id)) {

			PostEntity entity = DaoUtil.getPostDaoInstance().findById(id);

			postDto = ObjectUtils.copyProperties(entity, PostDto.class);
		}

		return postDto;

	}

}
