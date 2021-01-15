<%--
  Created by IntelliJ IDEA.
  User: calee
  Date: 9/25/2020
  Time: 2:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Book</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
</head>
<body>
<section class="section">
    <div class="level">
        <div class="level-item">
            <div class="title">
                <h1>
                    Add book
                </h1>
            </div>
        </div>
    </div>
    <div class="level">
        <div class="level-item">
            <form action="${pageContext.request.contextPath}/book/addBook" method="post" class="field">
                <div class="field">
                    <div class="content">
                        <label for="bkname" class="label">Book Name:</label>
                        <div class="control">
                            <input type="text" name="bookName" class="input" id="bkname" required/>
                        </div>
                    </div>
                    <div class="content">
                        <label for="bkcount" class="label">Book Count:</label>
                        <div class="control">
                            <input type="text" name="bookCounts" class="input" id="bkcount" required/>
                        </div>
                    </div>
                    <div class="content">
                        <label for="bkdetail" class="label">Book Detail:</label>
                        <div class="control">
                            <input type="text" name="detail" class="input" id="bkdetail" required/>
                        </div>
                    </div>
                    <div class="field is-grouped">
                        <div class="control">
                            <input type="submit" class="button is-link" value="Add">
                        </div>
                        <div class="control">
                            <a class="button is-link is-light" href="${pageContext.request.contextPath}/book/allBook">Cancel</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
</body>
</html>
