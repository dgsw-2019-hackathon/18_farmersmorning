package dgsw.jsp.class1.farmersmorning;

import java.util.List;

public interface UserManager
{
	public void join(User user);
	
	public List<User> list();
	
	public User getUser(String id);
	
	public void update(User user);
	
	
	/**
	 * 주어진 아이디가 이미 등록되어 있는지 여부를 되돌린다.
	 * 
	 * @param id
	 * @return 중복이면 Y, 중복이지 않으면 N
	 */
	public String isExist(String id);
}
