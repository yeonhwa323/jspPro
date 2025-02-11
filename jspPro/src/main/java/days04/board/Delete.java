package days04.board;

import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DBConn;

import days04.board.domain.BoardDTO;
import days04.board.persistence.BoardDAOImpl;

/**
 * Servlet implementation class List
 */
//@WebServlet("/cstvsboard/delete.htm")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Delete() {
        super();
    }

	// delete.htm?seq=160
	protected void doGet(HttpServletRequest request
			, HttpServletResponse response) throws ServletException, IOException {
		long pseq = Long.parseLong(request.getParameter("seq"));
		
		// 2. 포워딩
		String path = "/days04/board/delete.jsp";
	    RequestDispatcher dispatcher = request.getRequestDispatcher(path);
	    dispatcher.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request
			, HttpServletResponse response) throws ServletException, IOException {		
		  request.setCharacterEncoding("UTF-8");  // 한글깨짐방지
		  
		  // delete.htm?seq=160 + POST
		  int pseq = Integer.parseInt(request.getParameter("seq"));	      
	      String ppwd = request.getParameter("pwd");
	      
	      String currentPage = request.getParameter("currentPage");
	      String searchCondition = request.getParameter("searchCondition");
	      String searchWord = request.getParameter("searchWord");
	      
	      Connection conn = DBConn.getConnection();
	      BoardDAOImpl dao = new BoardDAOImpl(conn);
	      int rowCount = 0;
	      String originalPwd ;
	      String location = "/jspPro/cstvsboard/" ;      
	      
	      try {
	         originalPwd = dao.getOriginalPwd(pseq);
	         
	         if( originalPwd.equals(ppwd)) {
	        	 rowCount = dao.delete(pseq);
	        	 location += "list.htm?currentpage="+currentPage+
	                     	"&searchCondition="+searchCondition+
	                     	"&searchWord="+ URLEncoder.encode(searchWord, "UTF-8") +"&delete=success";location += "list.htm?currentpage="+currentPage+
	                     	"&searchCondition="+searchCondition+
	                     	"&searchWord="+ URLEncoder.encode(searchWord, "UTF-8") +"&delete=success";
	        	 
	         } else {
	        	 // delete.jsp 이동
	        	 //location += "delete.htm?seq=" + pseq + "&delete=fail";
	        	 location += "view.htm?seq=" + pseq + "&delete=fail";
	         } // if
	         
	      } catch (SQLException e) { 
	         System.out.println("> Delete.doPost() Exception...");
	         e.printStackTrace();
	      }
	      
	      DBConn.close();
	      
	      // 포워딩, [ 리다이렉트 ]
	      
	      location += rowCount == 1 ? "&edit=success":"&edit=fail";
	      response.sendRedirect(location);
	      
	      
	}

}
