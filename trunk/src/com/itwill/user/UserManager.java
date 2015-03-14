package com.itwill.user;

import java.util.List;

/*
 * - ����ڰ��������� ������ �����ϴ� Ŭ����
 * - UserDaoŬ������ ����ؼ�(����Ÿ���̽��� ����Ÿ�� ����ؼ�)
 *   ����Ͻ� ������ �����ϴ¿������Ѵ�.
 * - ��������Ʈ(JSP,Servlet)���� ȣ���ϰԵǴ� Ŭ���� 
 */
public class UserManager {
	/*******singleton********/
	private static UserManager  _instance;
	private UserManager(){
		System.out.println("UserManager������:"+this);
	}
	public static UserManager getInstance(){
		if(_instance==null){
			_instance=new UserManager();
		}
		return _instance;
	}
	/***********************/
	
	//����
	public int create(User user)throws Exception,ExistedUserException{
		//1.userId���翩��Ȯ��(UserDao.existedUser())
		if(UserDao.getUserDao().existedUser(user.getUserId())){
			throw new ExistedUserException(user.getUserId()+" �� �̹� �����ϴ� ���̵��Դϴ�.");
		}
		//2.DB insert(UserDao.create())
		int row=this.getUserDao().create(user);
		return row;
	}
	//�α���
	public User login(String userId,String password)throws UserNotFoundException,Exception{
		//1. �ԷµǴ� ���̵��� ���翩���ľ�
		User user = this.findUser(userId);
		//2. �о����� ��ġ����Ȯ��
		if(!user.isMatchPassword(password)){
			throw new PasswordMismatchException("�о����尡 ��ġ�����ʽ��ϴ�.");
		}
		return user;
		
	}
	//ȸ������Ʈ
	public List<User> findeUserList() throws Exception{
		return getUserDao().findUserList();
	}
	//ȸ���󼼺���
	public User findUser(String userId) throws Exception,UserNotFoundException{
		User user = getUserDao().findUser(userId);
		if(user==null){
			//���������ʴ� ���̵�
			throw new UserNotFoundException(userId+"�� ���������ʴ� ���̵��Դϴ�.");
		}
		return user;
	}
	//ȸ������
	//ȸ������
	public int remove(String userId)throws Exception{
		return getUserDao().remove(userId);
	}
	/*
	 * UserDao ��ü��ȯ�޽��
	 */
	private UserDao getUserDao(){
		return UserDao.getUserDao();
	}
}
