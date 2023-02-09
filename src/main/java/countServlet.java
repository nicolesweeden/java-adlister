import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "countServlet", urlPatterns = "/count")
public class countServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h1 ALIGN=\"CENTER\">Hello, World!</h1>");

        HttpSession session = request.getSession(true);
        response.setContentType("text/html");
        PrintWriter out1 = response.getWriter();
        Integer count = 0;
        String head;
        if (session.isNew()) {
            head = "This is the New Session";
        } else {
            head = "This is the old Session";
            Integer oldcount =(Integer)session.getValue("count");
            if (oldcount != null) {
                count = oldcount + 1;
            }
        }
        session.putValue("count", count);
        out1.println("<HTML><BODY BGCOLOR=\"lightgrey\">\n" +
                "<H2 ALIGN=\"CENTER\">" + head + "</H2>\n" +
                "<TABLE BORDER=1 ALIGN=CENTER>\n"
                + "<TR BGCOLOR=\"white\">\n"
                +"  <TH>Information Type<TH>Session Count\n"
                +"<TR>\n" +" <TD BGCOLOR=\"white\">Total Session Accesses\n" +
                "<TD BGCOLOR=\"white\" ALIGN=\"CENTER\">" + count + "\n" +
                "</TABLE>\n"
                +"</BODY></HTML>" );
    }
}