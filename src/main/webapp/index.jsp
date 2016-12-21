<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!"/>
    </jsp:include>

</head>
<body class="font">
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <h1>Buy & Sell Your Shit</h1>
</div>
<div class="container">
    <div class="ad" id="firstAd">first ad</div>
    <div class="ad" id="secondAd">second ad</div>
    <div class="ad" id="thirdAd">third ad</div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
</body>
</html>
