<!--
<%-- <nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
            <a href="#">Ads</a>
            <a href="#">Profile</a>
        </div>

        <ul class="nav navbar-nav navbar-right">
            <%--<input type="text" placeholder="Search.." id="myInput">--%>
<%--<li class="dropdown">--%>
<%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"--%>
<%--aria-expanded="false">Dropdown <span class="caret"></span></a>--%>
<%--<ul class="dropdown-menu">--%>
<%--<li><a href="#">Action</a></li>--%>
<%--<li><a href="#">Another action</a></li>--%>
<%--<li><a href="#">Something else here</a></li>--%>
<%--<li role="separator" class="divider"></li>--%>
<%--<li><a href="#">Separated link</a></li>--%>
<%--<li role="separator" class="divider"></li>--%>
<%--<li><a href="#">One more separated link</a></li>--%>
<%--
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                   aria-expanded="false">Categories <span class="caret"></span></a>
                <%--<button type="button" class="btn btn-default" id="categoriesList">Categories--%>
<%--
                    <ul class="dropdown-menu">
                        <li><a href="#">Furniture</a></li>
                        <li role="separator" class="divider"></li> <!--DIVIDER IN DROPDOWN-->
                        <li><a href="#">Kitchen Appliances</a></li>
                        <li><a href="#">Bathroom Appliances</a></li>
                        <li role="separator" class="divider"></li> <!--DIVIDER IN DROPDOWN-->
                        <li><a href="#">Lighting</a></li>
                        <li role="separator" class="divider"></li> <!--DIVIDER IN DROPDOWN-->
                        <li><a href="#">Furnishments</a></li>
                        <li role="separator" class="divider"></li> <!--DIVIDER IN DROPDOWN-->
                        <li><a href="#">Text Books</a></li>
                        <li role="separator" class="divider"></li> <!--DIVIDER IN DROPDOWN-->
                        <li><a href="#">Clothes</a></li>
                        <li role="separator" class="divider"></li><!--DIVIDER IN DROPDOWN-->
                        <li><a href="#">Other</a></li>
                        <%--<select name="categorySearch">--%>
<%--<option value="furniture">Furniture</option>--%>
<%--<option value="kitchen">Kitchen Appliances</option>--%>
<%--<option value="bathroom">Bathroom Appliances</option>--%>
<%--<option value="lighting">Lighting</option>--%>
<%--<option value="Furnishments">Furnishments</option>--%>
<%--<option value="Text Books">Text Books</option>--%>
<%--<option value="Clothes">Clothes</option>--%>
<%--<option value="Other">Other</option>--%>
<%--<option><a href="#">Furniture</a></option>--%>
<%--<option><a href="#">Kitchen Appliances</a></option>--%>
<%--<option><a href="#">Bathroom Appliances</a></option>--%>
<%--<option><a href="#">Lighting</a></option>--%>
<%--<option><a href="#">Furnishments</a></option>--%>
<%--<option><a href="#">Text Books</a></option>--%>
<%--<option><a href="#">Clothes</a></option>--%>
<%--<option><a href="#">Other</a></option>--%>
<%--</select>--%>
<%--
                    </ul>
                </button>
            </li>
            <li><a href="/login">Login</a></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
--%>
-->
<!--
<nav class="container">
<div class="left-side">
<a class="navbar-brand" href="/ads">Adlister</a>
<a href="#">Ads</a>
<a href="#">Profile</a>
</div>
<div class="right-side">
<div class="dropdown-content">
<select name="categorySearch">
<option value="furniture">Furniture</option>
<option value="kitchen">Kitchen Appliances</option>
<option value="bathroom">Bathroom Appliances</option>
<option value="lighting">Lighting</option>
<option value="Furnishments">Furnishments</option>
<option value="Text Books">Text Books</option>
<option value="Clothes">Clothes</option>
<option value="Other">Other</option>
</select>
</div>
<div class="login-logout-button">
<li><a href="/login">Login</a></li>
<li><a href="/logout">Logout</a></li>
</div>
</div>
</nav>
-->

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="../../index.jsp">Home</a> <!--Adlister-->
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <%--THIS LINK GOES TO THE ADS PAGE--%>
                <li class="active"><a href="#">Ads <span class="sr-only">(current)</span></a></li>
                <%--THIS LINK GOES TO THE USERS PROFILE--%>
                    <!--this will only show when the user is LOGGED IN-->
                <li><a href="#">Profile</a></li>

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
                <!--this will only show when the user is LOGGED OUT-->
                <li><a href="/login">Login</a></li>
                <!--this will only show when the user is LOGGED IN-->
                <li><a href="/login">Logout</a></li>

            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

