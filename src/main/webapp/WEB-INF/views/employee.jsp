<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>Spring 3 MVC Series - Contact Manager</title>
</head>
<body>
<h2>Contact Manager</h2>
<form:form method="post" action="/test/addContact" modelAttribute="appUser">

    <table>
        <tr>
            <td><form:label path="id">id</form:label></td>
            <td><form:input path="id" /></td>
        </tr>
        <tr>
            <td><form:label path="email">email</form:label></td>
            <td><form:input path="email" /></td>
        </tr>
        <tr>
            <td><form:label path="password">password</form:label></td>
            <td><form:input path="password" /></td>
        </tr>
        <tr>
            <td><form:label path="loginType">loginType</form:label></td>
            <td><form:input path="loginType" /></td>
        </tr>
        <tr>
            <td><form:label path="isCheck">loginType</form:label></td>
            <td><form:checkbox path="isCheck" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Add Contact"/>
            </td>
        </tr>
    </table>

</form:form>
</body>
</html>