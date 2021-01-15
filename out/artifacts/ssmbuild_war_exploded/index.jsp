<%--
  Created by IntelliJ IDEA.
  User: calee
  Date: 9/25/2020
  Time: 12:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
</head>
<body>
<section class="section">
    <div class="container">
        <div class="columns">
            <div class="column">
                <div class="level">
                    <div class="level-item">
                        <a class="button is-primary is-large" href="${pageContext.request.contextPath}/book/allBook">Show all
                            books</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
