package class_4;

import java.io.IOException;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SendEmail")
public class SendEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SendEmail() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("sendEmail.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(checkFields(request));
		if(checkFields(request)) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("sucessEmail.jsp");
			dispatcher.forward(request, response);
		}else {
			doGet(request, response);
		}
	}
	
	protected boolean checkFields(HttpServletRequest request) {
		String regex = "^(.+)@(.+)$";
		Pattern pattern = Pattern.compile(regex);
		
		String destinatario = request.getParameter("destinatario");
		String assunto = request.getParameter("assunto");
		String corpo = request.getParameter("corpo");
		
		Matcher matcher = pattern.matcher(destinatario);
		
		String[] field = {destinatario, assunto, corpo};
		for(String item : field){
			if(item == null || item == "") {
				return false;
			}
            System.out.println(item);
        }
		if(matcher.matches() == false) {
			return false;
		}
		return true;
		
	}

}
