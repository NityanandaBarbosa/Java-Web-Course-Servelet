package class_2;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CarrosComprar")
public class CarrosComprar extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CarrosComprar() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Class work 
		/*
		PrintWriter out = response.getWriter();
		Carro carro = new Carro();
		BeanUtilities.populateBean(carro, request);
		out.println("<html>");
		out.println("<h1>" + carro.getAno() + "</h1>");
		out.println("<h1>" + carro.getMarca() + "</h1>");
		out.println("<h1>" + carro.getModelo() + "</h1>");
		out.println("</html>"); 
		*/
		
		//HomeWork
		RequestDispatcher dispatcher = request.getRequestDispatcher("buyCar.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Carro carro = new Carro();
		BeanUtilities.populateBean(carro, request);
		request.setAttribute("marca", carro.getMarca());
		request.setAttribute("modelo", carro.getModelo());
		request.setAttribute("ano", carro.getAno());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("buyCar.jsp");
		dispatcher.forward(request, response);
	}

}
