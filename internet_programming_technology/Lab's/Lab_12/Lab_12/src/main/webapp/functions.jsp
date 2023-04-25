<%--
  Created by IntelliJ IDEA.
  User: aleks
  Date: 23.04.2023
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Functions</title>
</head>
<body>
  Количество букв в слове Hello = ${fn:length("Hello")}

    <c:set value="THIS IS CAPTIAL LETTERS" var="str" scope="page"/>
    <br/>
  Преобразование строки в нижний регистр: ${fn:toLowerCase(str)}

  <c:set value="car; plane; train; bus" var="str2" scope="page"/>
  <br/>
  Разбитие на подстроки:
    <c:forEach var="sub" items="${fn:split(str2, ';')}">
      ${sub}<br/>
    </c:forEach>

    <c:set var="str3" value="sun cloudy sun winter summer sun" scope="page"/>
    <br/>
    Заменим sun на border(sun cloudy sun winter summer sun): ${fn:replace(str3, "sun","border")}

    <br/>
    Начинется ли строка(${str}) со слова THIS или нет?
<c:if test="${fn:startsWith(str, 'THIS')}">
  <h2 style="color: blueviolet">ДА!</h2>
</c:if>
</body>
</html>
