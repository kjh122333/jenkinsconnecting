package com.user.db;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO {

	@Inject
	SqlSession sqlSession;

	private static final String nameSpace = "com.user.mapper.userMapper";

	@Override
	public boolean userLogin(UserDTO dto) throws Exception {
		String name = sqlSession.selectOne(nameSpace + ".userLogin", dto);
		return (name == null) ? false : true;
	}

	@Override
	public void userJoin(UserDTO dto) throws Exception {
		sqlSession.insert(nameSpace + ".userJoin", dto);
	}

	@Override
	public UserDTO userDetail(String id) throws Exception {
		return sqlSession.selectOne(nameSpace + ".userDetail", id);
	}

	@Override
	public void userEdit(UserDTO dto) throws Exception {
		sqlSession.update(nameSpace + ".userEdit", dto);
	}

	@Override
	public void userDelete(String id) throws Exception {
		sqlSession.delete(nameSpace + ".userDelete", id);
	}

	@Override
	public List<UserDTO> userFindId(UserDTO dto) throws Exception {
		return sqlSession.selectList(nameSpace + ".userFindId", dto);
	}

	@Override
	public String userFindPw(UserDTO dto) throws Exception {
		return sqlSession.selectOne(nameSpace + ".userFindPw", dto);
	}

	@Override
	public int idCheck(String id) throws Exception {
		return sqlSession.selectOne(nameSpace + ".idCheck", id);
	}
}
