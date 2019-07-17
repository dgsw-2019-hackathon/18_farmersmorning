package dgsw.jsp.class1.farmersmorning;

import java.util.LinkedList;
import java.util.List;

public class MemoryUserManager implements UserManager
{
	private static MemoryUserManager instance =
			new MemoryUserManager();
	
	private List<User> userList = new LinkedList<User>();
	
	private MemoryUserManager()
	{
	}
	
	public static MemoryUserManager getInstance()
	{
		return instance;
	}
	
	@Override
	public void join(User user)
	{
		userList.add(user);
	}

	@Override
	public List<User> list()
	{
		return userList;
	}
	
	@Override
	public User getUser(String id)
	{
		for (User user : userList)
		{
			if (user.getId().equals(id))
			{
				return user;
			}
		}
		return null;
	}
	
	@Override
	public void update(User user)
	{
		User saved = getUser(user.getId());
		if (saved != null)
		{
			userList.remove(saved);
			userList.add(user);
		}
	}

	@Override
	public String isExist(String id)
	{
		// TODO Auto-generated method stub
		return null;
	}
}
