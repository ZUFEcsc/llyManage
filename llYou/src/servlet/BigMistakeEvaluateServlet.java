package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;

/**
 * Servlet implementation class BigMistakeEvaluateServlet
 */
@WebServlet("/jsp/BigMistakeEvaluateServlet")
public class BigMistakeEvaluateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BigMistakeEvaluateServlet() {
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
		String kind=request.getParameter("kind");
		String description=request.getParameter("description");
		String other=request.getParameter("other");
		Dao dao=new Dao();
		boolean b=dao.BigMistakeEvaluateInsert(kind, description, other);
		if(b) {
			response.sendRedirect("JudgenianmoEvaluateServlet?m=1");
		}else {
			response.sendRedirect("JudgenianmoEvaluateServlet?m=0");
		}
	}

}
