<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 6/5/2024
  Time: 4:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/locale?lang=vi">Tiếng Việt</a> | <a href="/locale?lang=en">English</a>
<c:set var="localeCookie" value="${cookie['locale'].value}" />
<fmt:setLocale value="${localeCookie}" />
<fmt:setBundle basename="messages"/>

<h1><fmt:message key="greeting"/></h1>
<p><fmt:message key="welcome.message"/></p>
</body>
</html>
