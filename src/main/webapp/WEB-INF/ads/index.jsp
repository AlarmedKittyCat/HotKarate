<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="i" value="3" scope="page"/>
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

    <c:forEach var="ad" items="${ads}">
        <c:if test="${i % 3 == 0}">
            <div class="row">
        </c:if>
        <div class="boxes col-xs-4">
            <div class="box-text">
                <h2>${ad.title}</h2>
                <p class="font ad-text">${ad.description}</p>
                <p><a href="/ads?id=${ad.id}">Show More</a></p>
            </div>
        </div>
        <c:if test="${i % 3 == 2}">
            </div>
        </c:if>
        <c:set var="i" value="${i + 1}" scope="page"/>
    </c:forEach>
</div>
<script src="https://code.jquery.com/jquery-3.1.1.js"></script>
<script src="../../javascript/index_js.js"></script>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
</body>
</html>
