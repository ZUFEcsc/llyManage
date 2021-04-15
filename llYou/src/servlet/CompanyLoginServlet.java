package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;

/**
 * Servlet implementation class CompanyLoginServlet
 */
@WebServlet("/jsp/CompanyLoginServlet")
public class CompanyLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompanyLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String code=(String)session.getAttribute("code");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String code1=request.getParameter("code");
		String name=null;
		//System.out.println(username);
		//System.out.println(password);
		if(code.equals(code1)&&code1!=null&&code!=null) {
			Dao dao=new Dao();
			boolean b=dao.isExistUsername(username);
			System.out.println(b);
			if(b) {
				String password1=dao.FindPassword(username);
				if(password.equals(password1)) {
					name=dao.FindName(username);
					boolean a=dao.workInsert(name);
					System.out.println(a);
					if(username.equals("useru")) {
						response.sendRedirect("userSearch.jsp");
					}else if(username.equals("userd")) {
						response.sendRedirect("departmentMg.jsp");
					}else if(username.equals("usero")) {
						response.sendRedirect("officeMg.jsp");
					}else if(username.equals("userp")) {
						response.sendRedirect("projectMg.jsp");
					}else if(username.equals("usera")) {
						response.sendRedirect("adminMg.jsp");
					}else if(username.equals("userh")) {
						response.sendRedirect("hrPage.jsp");
					}
				}else {
					request.setAttribute("msg", "<script language='javascript'>window.alert('密码错误，请重新输入!');</script>");
					request.getRequestDispatcher("enterpriseLogin.jsp").forward(request, response);
				}
			}
			else {
				request.setAttribute("msg", "<script language='javascript'>window.alert('用户名不存在，请先注册!');</script>");
				request.getRequestDispatcher("enterpriseLogin.jsp").forward(request, response);
			}
		}else {
			request.setAttribute("msg", "<script language='javascript'>window.alert('验证码错误!');</script>");
			request.getRequestDispatcher("enterpriseLogin.jsp").forward(request, response);
		}
	}

}
