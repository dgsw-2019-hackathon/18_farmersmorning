package dgsw.jsp.class1.farmersmorning;

import java.util.List;

public interface UserManager
{
	public void join(User user);
	
	public List<User> list();
	
	public User getUser(String id);
	
	public void update(User user);
	
	
	/**
	 * �־��� ���̵� �̹� ��ϵǾ� �ִ��� ���θ� �ǵ�����.
	 * 
	 * @param id
	 * @return �ߺ��̸� Y, �ߺ����� ������ N
	 */
	public String isExist(String id);
}
