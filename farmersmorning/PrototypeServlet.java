package dgsw.jsp.class1.farmersmorning;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import dgsw.jsp.class1.User;
import dgsw.jsp.class1.bbs.service.BbsService;
import dgsw.jsp.class1.bbs.service.BbsServiceImpl;

@WebServlet("/protypeServlet")
public class PrototypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected User getUser(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("_user");
		
		return user;
	}

	protected void sendResponse(AjaxResult result, 
			HttpServletResponse response) 
					throws ServletException, IOException
	{
		Gson gson = new Gson();
		String json = gson.toJson(result);

		response.setContentType("text/json;charset=UTF-8");
		response.getWriter().append(json);
	}
	
	protected BbsService getBbsService()
	{
		return new BbsServiceImpl();
	}
	
}
