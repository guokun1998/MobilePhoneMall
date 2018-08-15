package cn.hrbeu.mapper;

import cn.hrbeu.po.User;

public interface UserMapper {
	public void insertOneUser(User user);
	
	public Integer findUserIdByUserTelephone(String userTelephone);
	
	public User findUserByUserRegister(User user);
	
	public void updateUserByUser(User user);
	
	public void deleteUserById(int id);
}

