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

@WebServlet("/CarrinhoClean")
public class CarrinhoClean extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CarrinhoClean() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession sessao = request.getSession();
		sessao.removeAttribute("carrinho");
		RequestDispatcher dispatcher = request.getRequestDispatcher("Carrinho.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("delete")!= null) {
			String strIndex = request.getParameter("delete");
			int removeIndex = Integer.parseInt(strIndex);
			
			HttpSession session = request.getSession();
			ArrayList<String> carrinho = (ArrayList<String>) session.getAttribute("carrinho");
			
			carrinho.remove(removeIndex);
			session.setAttribute("carrinho", carrinho);
			RequestDispatcher dispatcher = request.getRequestDispatcher("Carrinho.jsp");
			dispatcher.forward(request, response);
		}else {
			doGet(request, response);
		}
	}

}
