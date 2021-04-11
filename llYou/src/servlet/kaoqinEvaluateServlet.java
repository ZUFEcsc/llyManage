package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;

/**
 * Servlet implementation class kaoqinEvaluateServlet
 */
@WebServlet("/jsp/kaoqinEvaluateServlet")
public class kaoqinEvaluateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public kaoqinEvaluateServlet() {
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
		String number="SZ001F0001";
		String name="张琪";
		String position="普通员工";
		String chuqindays=request.getParameter("chuqin");
		String qingjiadays=request.getParameter("qingjia");
		String chidaodays=request.getParameter("chidao");
		String zaotuidays=request.getParameter("zaotui");
		String kuanggongdays=request.getParameter("kuanggong");
		String beizhu=request.getParameter("other");
		Dao dao=new Dao();
		boolean b=dao.KaoQinEvaluateInsert(chuqindays, qingjiadays, chidaodays, kuanggongdays, zaotuidays, beizhu);
		if(b) {
			response.sendRedirect("JudgekaoqinEvaluateServlet?m=1");
		}else {
			response.sendRedirect("JudgekaoqinEvaluateServlet?m=0");
		}
	}

}
