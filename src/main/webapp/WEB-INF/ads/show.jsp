<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body class="font">
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
        <div>
            <h2>${ad.title}</h2>
            <p>Posted By: ${user.username}</p>
            <p>${categories}</p>
            <p>${ad.description}</p>
        </div>
    <c:if test="${sessionScope.user.username == user.username}">
        <form action="/delete?postid=${ad.id}" method="post">
            <input type="submit" class="btn btn-primary" value="Delete Ad" onclick="return confirm('Are you sure you want to delete this ad?')">
        </form>
    </c:if>
</div>

</body>
</html>