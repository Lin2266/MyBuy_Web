<%@page import="uuu.mybuy.domain.BloodType"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員註冊</title>
</head>
<body>
	<form method="POST" action="/register.do">
		<p>
		<label for="id">會員帳號</label>
		<input type="text" id="id" name="id"
				value="<%=request.getParameter("id") == null ? "":request.getParameter("id")%>"
				pattern="[A-Za-z][12][0-9]{8}" required placeholder="請輸入身分證號">
		</p>
		<p>
		<label for="name">會員姓名</label>
		<input type="text" id="name" name="name" 
				value="<%= request.getParameter("name") == null? "":request.getParameter("name")%>"
				required placeholder="請輸入會員姓名">
		</p>
		<p>
		<label for="password1">會員密碼</label>
		<input type="password" id="password1" name="password1" required placeholder="請輸入密碼">
		</p>
		<p>
		<label for="password2">確認密碼</label>
		<input type="password" id="password2" name="password" required placeholder="請輸入確認密碼">
		</p>
		<p>
		<label>會員姓別</label>
		<input type="radio" id="male" name="gender" value="M" required 
				<%=request.getParameter("gender") != null && request.getParameter("gender").equals("M")?"checked":""%>>
		<label for="male">男</label>
		<input type="radio" id="female" name="gender" value="F" required
				<%=request.getParameter("gender")!=null && request.getParameter("gender").equals("F")?"checked":"" %>>
		<label for="female">女</label>
		</p>
		<p>
		<label for="email">電子郵件</label>
		<input type="email" id="email" name="email"
				value="<%=request.getParameter("email")==null?"":request.getParameter("email")%>"
				required placeholder="請輸入電子郵件">
		</p>
		<p>
		<label for="birthdate">出生日期</label>
		<input type="date" id="birthdate" name="birthdate"
				value="<%=request.getParameter("birthdate")== null? "":request.getParameter("birthdate")%>">
		</p>
		<p>
		<label for="address">聯絡地址</label>
		<textarea id="address" name="address" placeholder="請輸入聯絡地址" 
		<%=request.getParameter("address")==null?"":request.getParameter("address")%>></textarea>
		</p>
		<p>
		<label for="phone">聯絡電話</label>
		<input type="tel" id="phone" name="phone" value="<%=request.getParameter("phone")==null?"":request.getParameter("phone") %>"
		placeholder="請輸入聯絡電話">
		</p>
		<p>
		<label>婚姻狀況</label>
		<input type="checkbox" id="married" name="married" value="true" <%=request.getParameter("married")==null?"":"checked" %>>
		<label for="married">已婚</label>
		</p>
		<p>
            <label for="bloodType">會員血型</label>
            <select id="bloodType" name="bloodType">
                <option value="">請選擇...</option>
                <% for (BloodType bType : BloodType.values()) {%>
                <option value="<%= bType.name()%>" 
                        <%= (request.getParameter("bloodType") != null && bType.name().equals(request.getParameter("bloodType"))) ? "selected" : ""%>>
                    <%= bType.toString()%>
                </option>
                <% }%>
            </select>
        </p>
		<input type="submit" value="確定">	
	
	</form>
</body>
</html>