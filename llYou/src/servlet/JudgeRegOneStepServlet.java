package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JudgeRegOneStepServlet
 */
@WebServlet("/jsp/JudgeRegOneStepServlet")
public class JudgeRegOneStepServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JudgeRegOneStepServlet() {
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
		String username=(String)request.getAttribute("username");
		String m=request.getParameter("m");
		if(m!=null) {
			if(m.equals("1")) {
				
				request.setAttribute("msg", username);
			}
			else if(m.equals("0")) {
				//request.setAttribute("msg", "<script language='javascript'>window.alert('ע��ʧ��!');</script>");
			}
		}
		request.getRequestDispatcher("userReg2.jsp").forward(request, response);
	}

}
