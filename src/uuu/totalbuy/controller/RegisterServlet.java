package uuu.totalbuy.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register.do")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<String> errors = new ArrayList<>();
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		if(id!=null) {
			id=id.trim();
		}
		
		String name = request.getParameter("name");
		if(name!=null) {
			name=name.trim();
		}
		
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");
		if(password1!=null && (password1=password1.trim()).length()>0
			&& (password2=password2.trim()).length()>0) {
			if(!password1.equals(password2))
			errors.add("會員密碼與確認密碼不一致");
		}else {
			errors.add("會員密碼與確認密碼都必須輸入");
		}
		char gender;
		String sgender = request.getParameter("gender");
		if(sgender!=null) {
			gender = sgender.charAt(0);
		}else {
			errors.add("必須輸入性別");
		}
		
		String email = request.getParameter("email");
		if(email!=null) {
			email=email.trim();
		}else {
			errors.add("必須輸入電子郵件");
		}
		
		String birthdate = request.getParameter("birthdate");
		if(birthdate!=null) {
			birthdate = birthdate.trim();
		}
		
		String address = request.getParameter("address");
		if(address!=null) {
			address = address.trim();
		}
		
		String phone = request.getParameter("phome");
		if(phone!=null) {
			phone=phone.trim();
		}
		
		String married = request.getParameter("married");
		String bloodType = request.getParameter("bloodType");
		
		if(errors.isEmpty()) {
			
		}
	}

}




