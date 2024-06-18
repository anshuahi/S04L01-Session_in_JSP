package org.anshuahi;

import java.io.IOException;

import jakarta.servlet.http.Cookie;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberAreaControler
 */
public class MemberAreaControler extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MemberAreaControler() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		switch (action) {
		case "destroy":
			request.getSession().invalidate();
			response.sendRedirect("login.jsp");
			break;

//		default:
//			throw new IllegalArgumentException("Unexpected value");
//			break;
		}
	}

}
