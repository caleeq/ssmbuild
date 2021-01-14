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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>add book</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/addBook" method="post">
        <div class="form-group">
            <label for="bkname">Book Name:</label>
            <input type="text" name="bookName" class="form-control" id="bkname" required/>
        </div>
        <div class="form-group">
            <label for="bkcount">Book Count:</label>
            <input type="text" name="bookCounts" class="form-control" id="bkcount" required/>
        </div>
        <div class="form-group">
            <label for="bkdetail">Book Detail:</label>
            <input type="text" name="detail" class="form-control" id="bkdetail" required/>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="Add">
        </div>
    </form>


</div>
</body>
</html>
