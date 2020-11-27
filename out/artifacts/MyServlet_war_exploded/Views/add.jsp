<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add user</title>

</head>
<body>

<div>
    <h1> Add user </h1>

    <div>
    <%
        if (request.getAttribute("userName") != null) {
            out.println("<p>User '" + request.getAttribute("userName") + "' added!</p>");
        }
    %>
    </div>

    <div>
    <form method="post">
        <label>
            Name:
            <input type ="text" name="name">
            </br>
        </label>

        <label>
            Age:
            <input type ="text" name="age">
            </br>
        </label>
            <br>
        <button type="submit"> Submit</button>
    </form>
    </div>
</div>
<div>
    <button onclick="location.href='/'">Back to Home</button>
</div>
</body>

</html>
