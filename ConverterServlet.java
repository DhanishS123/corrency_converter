package currencyConverterLogicClasses;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class ConverterServlet
 */
@WebServlet("/ConverterServlet")
public class ConverterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ConverterServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		// getting data from currencyConverter.jsp
		String amountStr = request.getParameter("amount");
		String currency = request.getParameter("currency");

		double amount = Double.parseDouble(amountStr);

		double convertedAmount = Converter.convertCurrency(amount, currency);

		// printing output in console
		System.out.println("Entered amount is " + amount);
		System.out.println("Entered Currency is " + currency);
		System.out.println("conerted Currency is " + convertedAmount);


		// to send this data on next page DisplayBill.jsp
		session.setAttribute("amount", amount);
		session.setAttribute("currency", currency);
		session.setAttribute("convertedAmount", convertedAmount);
		session.setAttribute("convertedCurrency", "usd");

		//request.getRequestDispatcher("displayCurrency.jsp").forward(request, response);

		response.sendRedirect("displayCurrency.jsp");
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
