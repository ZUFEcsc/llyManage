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
		// ��������ַ���������
		response.setContentType("text/html;charset=utf-8");
		request.getCharacterEncoding();

		// ��ȡ��������userid
		String userid = request.getParameter("userid");

		// ����userid��ѯ�������Ա�ѧ������Ϣ,������Ϊ�ַ������ö��ŷֿ�

		PrintWriter printWriter = response.getWriter();
		String aa = "";
		// �����ﲻ�����ݿ��ֱ�Ӹ�����
		if (userid.equals("11")) {
			aa = "SZ001F0001,����,��ͨԱ��,";
		} else if (userid.equals("22")) {
			aa = "SZ001F0002,����,��ͨԱ��,";
		} else {
			aa = "SZ001F0003,����,��ͨԱ��,";
		}

		printWriter.print(aa);// ����ajax����
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
