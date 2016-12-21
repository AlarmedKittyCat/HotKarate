<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <div class="checkbox">
                <label for="furniture">
                    <input id="furniture" type="checkbox" value="1" name="categories[]">
                    Furniture
                </label>
                <label for="kitchen appliances">
                    <input id="kitchen appliances" type="checkbox" value="2" name="categories[]">
                    Kitchen Appliances
                </label>
                <label for="bathroom appliances">
                    <input id="bathroom appliances" type="checkbox" value="3" name="categories[]">
                    Bathroom Appliances
                </label>
                <label for="lighting">
                    <input id="lighting" type="checkbox" value="4" name="categories[]">
                    Lighting
                </label>
                <label for="furnishments">
                    <input id="furnishments" type="checkbox" value="5" name="categories[]">
                    Furnishments
                </label>
                <label for="text books">
                    <input id="text books" type="checkbox" value="6" name="categories[]">
                    Text Books
                </label>
                <label for="clothes">
                    <input id="clothes" type="checkbox" value="7" name="categories[]">
                    Clothes
                </label>
                <label for="other">
                    <input id="other" type="checkbox" value="8" name="categories[]">
                    Other
                </label>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>
