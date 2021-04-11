package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;

/**
 * Servlet implementation class NianMoEvaluateServlet
 */
@WebServlet("/jsp/NianMoEvaluateServlet")
public class NianMoEvaluateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NianMoEvaluateServlet() {
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
		String other=request.getParameter("other");
		Dao dao=new Dao();
		boolean b=dao.NianmoEvaluateInsert(other);
		if(b) {
			response.sendRedirect("JudgenianmoEvaluateServlet?m=1");
		}else {
			response.sendRedirect("JudgenianmoEvaluateServlet?m=0");
		}
	}

}
