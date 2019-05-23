<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Time Record Starshot</title>
</head>
<body>


<h1>Create Time Record</h1>
<form:form action="addTimeRecord" method="post" modelAttribute="timeRecord">
    <table>
        <tr>
            <td>Employee name</td>
            <td>
                <form:input path="employeeName"/> <br/>
            </td>
        </tr>
        <tr>
            <td>Time in</td>
            <td>
                <form:input type="datetime-local" path="timeIn"/> <br/>
            </td>
        </tr>
        <tr>
            <td>Time out</td>
            <td>
                <form:input type="datetime-local" path="timeOut"/> <br/>
            </td>
        </tr>
        <tr>
            <td>Active</td>
            <td>
                <form:checkbox path="active"/> <br/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <button type="submit">Submit</button>
            </td>
        </tr>
    </table>
</form:form>


<h2>Time Record List</h2>
<table>
    <tr>
        <td><strong>Id</strong></td>
        <td><strong>Employee Name</strong></td>
        <td><strong>TimeIn</strong></td>
        <td><strong>TimeOut</strong></td>
        <td><strong>Active</strong></td>

    </tr>
    <c:forEach items="${timeRecords}" var="timeRecord">
        <tr>
            <td>${timeRecord.id}</td>
            <td>${timeRecord.employeeName}</td>
            <td>${timeRecord.timeIn}</td>
            <td>${timeRecord.timeOut}</td>
            <td>${timeRecord.active}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
