<%--
  Created by IntelliJ IDEA.
  User: aleks
  Date: 10.04.2023
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="index.css">
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="wrapper" style="width: 300px; height: 250px">

    <div>
        <div class="name"><h2>Регистрация нового пользователя</h2></div>
    </div>

    <form class="form" action="ServletRegister">
        <input type="text" placeholder="Введите логин" name="userLogin"size="18" maxlength="30" required>
        <input type="password" placeholder="Введите пароль" name="userPassword"size="18" maxlength="30" required>
        <input type="submit" class="btn" name="buttonRegister" value="Зарегистрироваться">
    </form>
</div>
</body>
</html>
