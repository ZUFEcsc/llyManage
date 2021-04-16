package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;

/**
 * Servlet implementation class UptoThirdStepServlet
 */
@WebServlet("/jsp/UptoThirdStepServlet")
public class UptoThirdStepServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UptoThirdStepServlet() {
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
		//PrintWriter out=response.getWriter();
		String identity=request.getParameter("identity");
//		try {
//			identity=new String(identity.getBytes("ISO-8859-1"),"UTF-8");
//		}catch(UnsupportedEncodingException e) {
//			e.printStackTrace();
//		}
		Dao dao=new Dao();
		boolean b=dao.UptoThirdStepUpdate(identity);
		if(b) {
			response.sendRedirect("hrPage#4.jsp");
//			response.sendRedirect("JudgeServlet?m=1");
		}else {
			response.sendRedirect("hrPage#4.jsp");
//			response.sendRedirect("JudgeServlet?m=0");
		}
	}

}
