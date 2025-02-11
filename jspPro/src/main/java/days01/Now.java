package days01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Now extends HttpServlet {


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//contentType="text/html; charset=EUC-KR"
		// UTF-8이랑 같은 의미 내용 빼먹음....
		resp.setContentType("text/html;charset=UTF-8"); 
		
		Date now =new Date();
		// 출력 형식 2023-10-24 10:05:43
		String pattern = "yyyy-MM-dd hh:mm:ss";
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		String strNow = sdf.format(now);

		PrintWriter out = resp.getWriter();

		out.write("<!DOCTYPE html>");
		out.write("<html>");
		out.write("<head>");
		out.write("<meta charset=\"UTF-8\">");
		out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
		out.write("<title>Insert title here</title>");
		out.write("<link rel=\"shortcut icon\" href=\"http://localhost/jspPro/images/SiSt.ico\"><link rel=\"shortcut icon\" href=\"http://localhost/jspPro/images/SiSt.ico\">");
		out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js\"></script>");
		out.write("</head>");
		out.write("<body>");

		out.write("<h3> 현재 날짜 시간 : " + strNow + "</h3>");

		out.write("</body>");
		out.write("</html>");
	}



}
