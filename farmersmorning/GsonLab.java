package dgsw.jsp.class1.farmersmorning;

import com.google.gson.Gson;

public class GsonLab
{
	public static void main(String[] args)
	{
		try
		{
			Student s1 = new Student();
			s1.name = "������";
			s1.grade = 3;
			
			String[] hobby = new String[3];
			hobby[0] = "���߱�";
			hobby[1] = "�뷡�θ���";
			hobby[2] = "�ڵ�";
			
			s1.hobby = hobby;
			
			Gson gson = new Gson();
			String json = gson.toJson(s1);
			
			System.out.println(json);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	
	public static class Student
	{
		private String name;
		
		private int grade;
		
		private String[] hobby;
	}
	
}
