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

    <c:forEach var="ad" items="${ads}">
            <div class="boxes col-md-4">
                <div class="box-text">
            <h2>${ad.title}</h2>
            <p class="font ad-text">${ad.description}</p>
            <p><a href="/ads?id=${ad.id}">Show More</a></p>
            </div>
            </div>
    </c:forEach>
</div>
<script src="https://code.jquery.com/jquery-3.1.1.js"></script>
<script src="../../javascript/index_js.js"></script>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
</body>
</html>
