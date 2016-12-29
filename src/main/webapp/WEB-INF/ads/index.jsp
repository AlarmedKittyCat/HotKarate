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
    <h1>Check out the current ads</h1>
<ul class="grid effect-4" id="grid">
    <c:forEach var="ad" items="${ads}">
            <li>
            <h2>${ad.title}</h2>
            <p class="font">${ad.description}</p>
            <p><a href="/ads?id=${ad.id}">Show More</a></p>
            </li>
    </c:forEach>
</ul>
</div>
<!--
 <script src="../../javascript/index_js.js"></script>
 -->

</body>
</html>
