import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/contact")
public class ContactServlet extends HttpServlet {

    List<Contact> contactList = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        String html = "<h1>Welcome to my contact list!</h1>";

        // Loop through contactList
        for (Contact contact : contactList) {
            html += "<p>Name: " + contact.getName() + "</p>";
            html += "<p>E-mail: " + contact.getEmail() + "</p>";
            html += "<br>";
        }

        html += "<form method=\"POST\" action=\"/contact\">";

        html += "<label for=\"name\">Name: </label>";
        html += "<input id=\"name\" name=\"name\" type=\"text\">";
        html += "<br>";

        html += "<label for=\"email\">E-mail: </label>";
        html += "<input id=\"email\" name=\"email\" type=\"text\">";
        html += "<br>";

        html += "<input type=\"submit\">";
        html += "</form>";

        out.print(html);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        String nameFromForm = req.getParameter("name");
        String emailFromForm = req.getParameter("email");

        if (nameFromForm != null && !nameFromForm.equals("") && emailFromForm !=null && !emailFromForm.equals("")) {
            contactList.add(new Contact(nameFromForm, emailFromForm));
        } else {
            out.println("<h3>Something went wrong -- you cannot leave the name or email field blank.</h3>");
        }

        doGet(req, resp);

    }
}
