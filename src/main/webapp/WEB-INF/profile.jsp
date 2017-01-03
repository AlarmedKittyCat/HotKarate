<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body class="font">
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <ul>
            <c:forEach var="ad" items="${ads}">
                    <div class="boxes">
                        <div class="box-text">
                            <h2>${ad.title}</h2>
                            <p class="font">${ad.description}</p>
                            <form action="/delete?postid=${ad.id}" method="post">
                                <input type="submit" class="btn btn-primary" value="Delete Ad" onclick="return confirm('Are you sure you want to delete this ad?')">
                            </form>
                        </div>
                    </div>
            </c:forEach>
        </ul>
    </div>

</body>
</html>
