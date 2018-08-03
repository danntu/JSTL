<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<core:out value="Danik"/>
<core:set var="sal" scope="session" value="${3000*2}"/>
<p>Before Remove Value: <core:out value = "${sal}"/></p>
<core:remove var = "sal"/>
<p>After Remove Value: <core:out value = "${sal}"/></p>

<core:catch var="catchException">
    <% int x = 5 / 0; %>
</core:catch>

<core:if test="${catchException  != null}">
    <p> The exception is :  ${catchException} <br>
        There is exception: ${catchException.message}
    </p>
</core:if>
<core:set var="sal" scope="session" value="${3000*2}"/>
<core:if test="${sal>2000}">
    <p>My salary is very small : <core:out value="${sal}"/></p>
</core:if>

<core:choose>
    <core:when test="${sal>5000}">
        Salary is very good
    </core:when>
    <core:otherwise>
        You salary is bad
    </core:otherwise>
</core:choose>

<%--<core:import var="data" url="home"/>--%>
<%--<core:out value="${data}"/>--%>

<core:forEach var="i" begin="0" end="5">
    i=<core:out value="${i}"/>
</core:forEach>

<core:forTokens var="name" items="Test1;Test2;Test4" delims=";">
    <core:out value="${name}"/>
</core:forTokens>
<br>
<core:url value="core.jsp" var="urltest">
    <core:param name="test" value="123"/>
    <core:param name="phone" value="702"/>
</core:url>
<%--<core:import url="${urltest}"/>--%>

<%--<core:redirect url="signin.jsp"/>--%>
<a href = "<core:url value = "signin.jsp"/>">TEST</a>
</body>
</html>