package dgsw.jsp.class1.farmersmorning;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dgsw.jsp.class1.User;
import dgsw.jsp.class1.bbs.AjaxResult;

/**
 * �α��ε� ���� ������ �о���� ����
 */
@WebServlet("/farmer's morning/myInfo")
public class InfoServlet extends PrototypeServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		User user = getUser(request);
		
		AjaxResult result = new AjaxResult();
		
		if (user == null)
		{
			result.setCode("fail");
			result.setMessage("�α��εǾ� ���� �ʽ��ϴ�.");
		}
		else
		{
			result.setCode("success");
			result.setData(user);
		}

		Gson gson = new Gson();
		
		response.setContentType("text/json;charset=UTF-8");
		response.getWriter().append(gson.toJson(result));
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}