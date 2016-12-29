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
    <ul class="grid effect-4" id="grid">
        <li>
            <h2>${ad.title}</h2>
            <p>Posted By: ${user.username}</p>
            <p>${categories}</p>
            <p>${ad.description}</p>
        </li>
    </ul>
</div>

</body>
</html>