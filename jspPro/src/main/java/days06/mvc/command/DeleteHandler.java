package days06.mvc.command;

import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;
import com.util.DBConn;

import days06.mvc.domain.BoardDTO;
import days06.mvc.persistence.BoardDAOImpl;


public class DeleteHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		String currentPage = request.getParameter("currentpage");
	    String searchCondition = request.getParameter("searchCondition");
	    String searchWord = request.getParameter("searchWord");
	    if( searchWord == null ) searchWord = "";
	    
		String method = request.getMethod();  // GET  POST
		
		if ( method.equals("GET")) { // Edit.java  doGet() 복사+붙이기
			long pseq = Long.parseLong(request.getParameter("seq"));
			
			return String.format( "/days06/board/delete.jsp?currentpage=%s&searchCondition=%s&searchWord=%s"
					,currentPage, searchCondition, searchWord); // + cp, sc, sw
			
		} else {  // Edit.java  doPost() 복사+붙이기
			request.setCharacterEncoding("UTF-8");  // 한글깨짐방지
			  
			  // delete.htm?seq=160 + POST
			  int pseq = Integer.parseInt(request.getParameter("seq"));	      
		      String ppwd = request.getParameter("pwd");
		      
		      Connection conn = ConnectionProvider.getConnection();
		      BoardDAOImpl dao = new BoardDAOImpl(conn);
		      int rowCount = 0;
		      String originalPwd ;
		      String location = "/jspPro/board/" ;      
		      
		      try {
		         originalPwd = dao.getOriginalPwd(pseq);
		         
		         if( originalPwd.equals(ppwd)) {
		        	 rowCount = dao.delete(pseq);
		        	 location += "list.do?currentpage="+currentPage+
		                     	"&searchCondition="+searchCondition+
		                     	"&searchWord="+ URLEncoder.encode(searchWord, "UTF-8") +"&delete=success";
		        	 location += "list.do?currentpage="+currentPage+
		                     	"&searchCondition="+searchCondition+
		                     	"&searchWord="+ URLEncoder.encode(searchWord, "UTF-8") +"&delete=success";
		        	 
		         } else {
		        	 // delete.jsp 이동
		        	 //location += "delete.htm?seq=" + pseq + "&delete=fail";
		        	 location += "view.do?seq=" + pseq + "&delete=fail";
		         } // if
		         
		      } catch (SQLException e) { 
		         System.out.println("> DeleteHandler.doPost() Exception...");
		         e.printStackTrace();
		      }
		      
		      conn.close();
		      
		      // 포워딩, [ 리다이렉트 ]
		      
		      location += rowCount == 1 ? "&delete=success":"&delete=fail";
		      response.sendRedirect(location);
		      
		} // if
		
		return null;
	}
	
}
