import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/fruit")
public class FruitServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        String fruit = req.getParameter("fruit");
        if (fruit != null && !fruit.isEmpty()) {
            out.println("<h1>Hello, Poster!</h1>" +
                    "<p>Here is a " + fruit + ".</p>");
        } else {
            out.println("<h1>Hello, Poster!</h1>" +
                    "<p>Here is a fruit.</p>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fruit = req.getParameter("fruit");
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.println("<h1>Hello, World!</h1>" +
                "<p>Here is a " + fruit + ".</p>");
    }
}
