package javaweb;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/items")
public class ItemsServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		ItemsViewModel vm = new ItemsViewModel();
		List<Item> items = vm.itemList();
		
		req.setAttribute("itemList", items);
		req.getRequestDispatcher("/items.jsp").forward(req, res);

	}

}
