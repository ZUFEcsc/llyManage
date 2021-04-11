package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;

/**
 * Servlet implementation class TwoRegistServlet
 */
@WebServlet("/jsp/TwoRegistServlet")
public class TwoRegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TwoRegistServlet() {
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
		PrintWriter out=response.getWriter();
		String username=request.getParameter("username");
		String name=request.getParameter("name");
		String sex=request.getParameter("sex");
		String nation=request.getParameter("nation");
		String political_feature=request.getParameter("political_feature");
		String identity=request.getParameter("identity");
		String school=request.getParameter("school");
		String honor=request.getParameter("honor");
		String inschool=request.getParameter("inschool");
		String graduate=request.getParameter("graduate");
		Dao dao=new Dao();
		System.out.println("----------------------------"+username+"----------------------------------");
		boolean b=dao.RegTwoStepUpdate(name, sex, nation,political_feature,identity,school,honor,inschool,graduate,username);
		if(b) {
			response.sendRedirect("JudgeRegTwoStepServlet?m=1");
			
		}else {
			response.sendRedirect("JudgeRegTwoStepServlet?m=0");
		}
	}

}
