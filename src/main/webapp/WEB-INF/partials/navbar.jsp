<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
            </button>
            <a class="navbar-brand" href="/">Home</a> <!--Adlister-->
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <%--THIS LINK GOES TO THE ADS PAGE--%>
                <li><a href="/ads">Ads <span class="sr-only">(current)</span></a></li>
                <%--THIS LINK GOES TO THE USERS PROFILE--%>
                    <!--this will only show when the user is LOGGED IN-->
                <c:if test="${sessionScope.user != null}">
                    <li><a href="/profile">Profile</a></li>
                </c:if>

                <%--THIS CATEGORIES DROPDOWN NEEDS TO GO ON
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">Categories <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Furniture</a></li>
                        <li role="separator" class="divider"></li> <!--DIVIDER-->
                        <li><a href="#">Kitchen Appliances</a></li>
                        <li><a href="#">Bathroom Appliances</a></li>
                        <li role="separator" class="divider"></li> <!--DIVIDER-->
                        <li><a href="#">Lighting</a></li>
                        <li><a href="#">Furnishments</a></li>
                        <li role="separator" class="divider"></li> <!--DIVIDER-->
                        <li><a href="#">Text Books</a></li>
                        <li role="separator" class="divider"></li> <!--DIVIDER-->
                        <li><a href="#">Clothes</a></li>
                        <li role="separator" class="divider"></li> <!--DIVIDER-->
                        <li><a href="#">Other</a></li>
                    </ul>
                </li>
                THE RIGHT SIDE OF THE NAV BAR--%>
            </ul>

            <%--THIS FORM IS FOR A SEARCH BAR THAT WE MAY USE
            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
            --%>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/ads/create">Create Ad</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">Categories <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="/ads?category=furniture">Furniture</a></li>
                        <li role="separator" class="divider"></li> <!--DIVIDER-->
                        <li><a href="/ads?category=kitchen appliances">Kitchen Appliances</a></li>
                        <li><a href="/ads?category=bathroom appliances">Bathroom Appliances</a></li>
                        <li role="separator" class="divider"></li> <!--DIVIDER-->
                        <li><a href="/ads?category=lighting">Lighting</a></li>
                        <li><a href="/ads?category=furnishments">Furnishments</a></li>
                        <li role="separator" class="divider"></li> <!--DIVIDER-->
                        <li><a href="/ads?category=text books">Text Books</a></li>
                        <li role="separator" class="divider"></li> <!--DIVIDER-->
                        <li><a href="/ads?category=clothes">Clothes</a></li>
                        <li role="separator" class="divider"></li> <!--DIVIDER-->
                        <li><a href="/ads?category=other">Other</a></li>
                    </ul>
                </li>
                <c:choose>
                    <c:when test="${sessionScope.user != null}">
                <!--this will only show when the user is LOGGED IN-->
                        <li><a href="/logout">Logout</a></li>
                    </c:when>
                    <c:otherwise>
                <!--this will only show when the user is LOGGED OUT-->
                        <li><a href="/login">Login</a></li>
                    </c:otherwise>
                </c:choose>

            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

