package days06.mvc.command;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;
import com.util.DBConn;

import days06.mvc.domain.BoardDTO;
import days06.mvc.domain.PageDTO;
import days06.mvc.persistence.BoardDAOImpl;


// view.do(상세보기) -> [M]VC
public class ViewHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws Exception {		
		System.out.println("> ViewHandler.process()...");
		
		long pseq = Long.parseLong(request.getParameter("seq"));
		String pedit = request.getParameter("edit");		
		
		// [해당 글번호의 상세보기 처리]
		Connection conn = DBConn.getConnection();
		BoardDAOImpl dao = new BoardDAOImpl(conn);
		BoardDTO dto = null;
		
		try {
			if( pedit==null ) dao.increaseReaded(pseq);
			dto = dao.view(pseq);
		} catch (SQLException e) {
			System.out.println("> View.doGet() Exception...");
			e.printStackTrace();
		}
		DBConn.close();
		
		request.setAttribute("dto", dto);
		 
		return "/days06/board/view.jsp"; // "view.jsp"
	}


}
