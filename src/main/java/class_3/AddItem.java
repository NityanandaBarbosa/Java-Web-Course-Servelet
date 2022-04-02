package class_3;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AddItem")
public class AddItem extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddItem() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getRequestDispatcher("addItem.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<String> carrinho = new ArrayList<String>();
		HttpSession session = request.getSession();
		if(session.getAttribute("carrinho") != null) {
			carrinho = (ArrayList<String>)session.getAttribute("carrinho");
		}
		if(request.getParameter("item") != "") {
			carrinho.add(request.getParameter("item"));
			session.setAttribute("carrinho", carrinho);
		}
		doGet(request, response);
	}

}
