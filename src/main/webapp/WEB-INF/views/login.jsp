<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
<p><font color="red">${errorMessage}</font></p>

<form:form action="login" method="post">
    <table>
        <tr>
            <td>Username</td>
            <td>
                <input name="username" type="text" value="developer"/> <br/>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <input name="password" type="password" value="devpassword"/> <br/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <button type="submit">Submit</button>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>