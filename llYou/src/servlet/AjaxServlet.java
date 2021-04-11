package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AjaxServlet
 */
@WebServlet("/jsp/AjaxServlet")
public class AjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AjaxServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 解决中文字符编码问题
		response.setContentType("text/html;charset=utf-8");
		request.getCharacterEncoding();

		// 获取传过来的userid
		String userid = request.getParameter("userid");

		// 根据userid查询姓名、性别、学历等信息,并整合为字符串，用逗号分开

		PrintWriter printWriter = response.getWriter();
		String aa = "";
		// 我这里不连数据库就直接给出了
		if (userid.equals("11")) {
			aa = "SZ001F0001,张琪,普通员工,";
		} else if (userid.equals("22")) {
			aa = "SZ001F0002,张培,普通员工,";
		} else {
			aa = "SZ001F0003,王光,普通员工,";
		}

		printWriter.print(aa);// 返给ajax请求
		printWriter.flush();
		printWriter.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
