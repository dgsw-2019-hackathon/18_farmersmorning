package dgsw.jsp.class1.farmersmorning;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import dgsw.jsp.class1.DbUserManager;
import dgsw.jsp.class1.User;
import dgsw.jsp.class1.UserManager;
import dgsw.jsp.class1.bbs.AjaxResult;
import sun.reflect.ReflectionFactory.GetReflectionFactoryAction;

/**
 * �α����� �����ϱ� ���� ����
 */
@WebServlet("/farmer's morning/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		UserManager userManager = new DbUserManager();
		User user = userManager.getUser(id);
	
		AjaxResult result = new AjaxResult();
		
		if (user == null || !user.getPassword().equals(password))
		{
			// �α��� ����
			result.setCode("fail");
			result.setMessage("��ϵ��� ���� ���̵�ų�, ��й�ȣ�� �ùٸ��� �ʽ��ϴ�.");
		}
		else
		{
			HttpSession session = request.getSession();
			session.setAttribute("_user", user);
			
			user.setPassword(null);
			result.setCode("success");
			result.setData(user);
		}
		
		Gson gson = new Gson();
		
		response.setContentType("text/json;charset=UTF-8");
		response.getWriter().append(gson.toJson(result));
	}

}