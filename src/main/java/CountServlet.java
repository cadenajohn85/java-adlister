import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/count")
public class CountServlet extends HttpServlet {

    int pageCount = 0;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        String resetPageCount = req.getParameter("reset");
        if (resetPageCount != null && !resetPageCount.isEmpty()) {
            pageCount = 0;
        }

        pageCount++;

        out.println("<p>Current page count: " + pageCount + "</p>");
    }
}
