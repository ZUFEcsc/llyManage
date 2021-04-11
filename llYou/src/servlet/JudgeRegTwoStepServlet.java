package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JudgeRegTwoStepServlet
 */
@WebServlet("/jsp/JudgeRegTwoStepServlet")
public class JudgeRegTwoStepServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JudgeRegTwoStepServlet() {
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
		String m=request.getParameter("m");
		if(m!=null) {
			if(m.equals("1")) {
				
				request.setAttribute("msg", "<script language='javascript'>window.alert('×¢²á³É¹¦!');</script>");
			}
			else if(m.equals("0")) {
				request.setAttribute("msg", "<script language='javascript'>window.alert('×¢²áÊ§°Ü!');</script>");
			}
		}
		request.getRequestDispatcher("userReg3.jsp").forward(request, response);
	}

}
