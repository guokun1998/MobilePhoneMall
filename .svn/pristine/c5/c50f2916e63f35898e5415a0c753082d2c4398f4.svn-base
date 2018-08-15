package cn.hrbeu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.hrbeu.mapper.UserMapper;
import cn.hrbeu.po.User;



@Service
public class UserServiceImpl implements UserService{

	
	@Autowired
	private UserMapper userMapper;

	@Override
	public void insertOneUser(User user) throws Exception {
		// TODO Auto-generated method stub
		userMapper.insertOneUser(user);
	}

	@Override
	public Integer findUserIdByUserTelephone(String userTelephone) throws Exception {
		// TODO Auto-generated method stub
		return userMapper.findUserIdByUserTelephone(userTelephone);
	}

	@Override
	public User findUserByUserRegister(User user) throws Exception {
		// TODO Auto-generated method stub
		return userMapper.findUserByUserRegister(user);
	}
	@Override
	public void updateUserByUser(User user) throws Exception{
		userMapper.updateUserByUser(user);
	}
	@Override
	public void deleteUserById(int userId) throws Exception{
		userMapper.deleteUserById(userId);
	}

}
