package com.example.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

// http://localhost:8080/2-sesstion-login/ ===> "/" 매칭됩니다.

@WebServlet({ "/login" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 서블릿 클래스에서 화면처리를 JSP에게 위임합니다.
		String action = req.getParameter("action");
		if (action != null && action.equals("logout")) {
			// 로그아웃 처리를 수행한다.
			req.getSession().invalidate();
			// 처리후 연동할 화면을 지정한다.
			String path = "/WEB-INF/views/logout.jsp";
			req.getRequestDispatcher(path).forward(req, res);
		} else {
			// 로그인 화면을 전달한다.
			String path = "/WEB-INF/views/login.jsp";
			req.getRequestDispatcher(path).forward(req, res);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");

		if (isMember(id, pw)) {
			// 회원 인증 성공시 회원인증 기록을 session 객체에 등록한다.
			HttpSession session = req.getSession();
			session.setAttribute("loginUser", id);

			// 회원 인증 처리 후 보여줄 화면을 표시한다.
			String path = "/WEB-INF/views/login-success.jsp";
			req.getRequestDispatcher(path).forward(req, res);
			
		} else {
			// 회원 인증 실패 시, 실패 정보를 사용자에게 알려준다.
			req.setAttribute("ERROR", "ID 또는 PASSWORD가 일치하지 않습니다.");
			String path = "/WEB-INF/views/login.jsp";
			req.getRequestDispatcher(path).forward(req, res);
		}
	}

	private boolean isMember(String id, String pw) {
		if (id.equals("user") && pw.equals("1234")) {
			return true;
		}
		return false;
	}
}
