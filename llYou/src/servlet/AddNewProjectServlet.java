package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;

/**
 * Servlet implementation class AddNewProjectServlet
 */
@WebServlet("/jsp/AddNewProjectServlet")
public class AddNewProjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewProjectServlet() {
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
		String projectnumber="SZ001F004";
		String projectname=request.getParameter("projectname");
		String projectresponser="张雨佳";
		String projectmember="王光，张培";
		String projectcontent=request.getParameter("projectcontent");
		String startdate=request.getParameter("starttime");
		Dao dao=new Dao();
		boolean b=dao.NewProjectInsert(projectnumber, projectname, projectresponser, projectmember, projectcontent, startdate);
		if(b) {
			response.sendRedirect("JudgeAddNewProjectServlet?m=1");
		}else {
			response.sendRedirect("JudgeAddNewProjectServlet?m=0");
		}
	}

}
