<%--
  Created by IntelliJ IDEA.
  User: calee
  Date: 9/26/2020
  Time: 12:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Book</title>
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

    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <input type="hidden" name="bookID" value="${Qbooks.bookID}">
        <div class="form-group">
            <label for="bkname">Book Name:</label>
            <input type="text" name="bookName" class="form-control" id="bkname" value="${Qbooks.bookName}" required/>
        </div>
        <div class="form-group">
            <label for="bkcount">Book Count:</label>
            <input type="text" name="bookCounts" class="form-control" id="bkcount" value="${Qbooks.bookCounts}" required/>
        </div>
        <div class="form-group">
            <label for="bkdetail">Book Detail:</label>
            <input type="text" name="detail" class="form-control" id="bkdetail" value="${Qbooks.detail}" required/>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="Update">
        </div>
    </form>

</div>
</body>
</html>
