<%--
  Created by IntelliJ IDEA.
  User: aleks
  Date: 23.04.2023
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>SQL</title>
</head>
<body>
<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
                   url = "jdbc:mysql://localhost:3306/java?autoReconnect=true&useSSL=false"
                   user = "root"  password = "Kravchenko1"/>

    <sql:query dataSource = "${snapshot}" var = "result">
      SELECT * from users;
    </sql:query>
  <table>
  <tr>
    <th>User ID</th>
    <th>User login</th>
    <th>User password</th>
    <th>Type of user</th>
  </tr>

  <c:forEach var = "row" items = "${result.rows}">
    <tr>
      <td> <c:out value = "${row.id}"/></td>
      <td> <c:out value = "${row.username}"/></td>
      <td> <c:out value = "${row.password}"/></td>
      <td> <c:out value = "${row.typeOfUser}"/></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
