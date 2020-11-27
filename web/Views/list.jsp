<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users list</title>

</head>
<body>

<div>
    <h1> Users list </h1>
</div>

<%
List<String> users = (List<String>) request.getAttribute("userNames");

if (users != null && !users.isEmpty() ) {
//    out.print("<ui>");
    for (String x : users) {
        out.print("<li>" + x + "</li>" );
        out.println();
    }
//    out.print("</ui>");
} else {
    out.println("<p>Error</p>");
}
%>


</body>

</html>
