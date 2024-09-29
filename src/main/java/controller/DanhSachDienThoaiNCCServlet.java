package controller;

import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.ServiceDienThoai;
import service.ServiceNhaCungCap;

import java.io.IOException;

/**
 * Servlet implementation class DanhSachDienThoaiNCCServlet
 */
@WebServlet(urlPatterns = { "/listPhone", "/listPhone/*" })
public class DanhSachDienThoaiNCCServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EntityManagerFactory factory;
	private static ServiceDienThoai serviceDienThoai;
	private static ServiceNhaCungCap serviceNhaCungCap;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DanhSachDienThoaiNCCServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		factory = Persistence.createEntityManagerFactory("trinhminhkha21091031");
		serviceDienThoai = new ServiceDienThoai(factory.createEntityManager());
		serviceNhaCungCap = new ServiceNhaCungCap(factory.createEntityManager());
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("nhaCungCaps", serviceNhaCungCap.getAll());
		String maNCC = request.getParameter("maNCC");
		String search = request.getParameter("search");
		if (maNCC != null) {
			filterByNCC(request, response, maNCC);
		} else if (search != null) {
			search(request, response, search);
		} else {
			request.setAttribute("listPhone", serviceDienThoai.getAll());
		}
		request.getRequestDispatcher("views/ListPhone/index.jsp").forward(request, response);
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

	private void search(HttpServletRequest request, HttpServletResponse response, String search)
			throws ServletException, IOException {
		request.setAttribute("listPhone", serviceDienThoai.getByName(search));
	}

	private void filterByNCC(HttpServletRequest request, HttpServletResponse response, String maNCC)
			throws ServletException, IOException {
		if (!maNCC.equals("all")) {
			request.setAttribute("listPhone", serviceDienThoai.getByNCC(Integer.parseInt(maNCC)));
		} else {
			request.setAttribute("listPhone", serviceDienThoai.getAll());
		}
	}
}
