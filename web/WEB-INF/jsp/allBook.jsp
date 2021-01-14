<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: calee
  Date: 9/25/2020
  Time: 1:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Books</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>All Books Here</h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-8 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">Add Book</a>
        </div>
        <div class="col-md-4 column">
            <form action="${pageContext.request.contextPath}/book/queryBook" method="post" class="form-inline">
                <input type="text" name="queryBookName" class="form-control" placeholder="Input Book Name">
                <input type="submit" class="btn btn-primary" value="Search">
            </form>
        </div>
    </div>

    <div class="row clearfix">
        <div style="text-align: center; font-size: 30px; color: red">
            <span>${error}</span>
        </div>
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>#</th>
                    <th>NAME</th>
                    <th>COUNTS</th>
                    <th>DETAIL</th>
                    <th>OPERATION</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="book" items="${list}">
                    <tr>
                        <td>${book.bookID}</td>
                        <td>${book.bookName}</td>
                        <td>${book.bookCounts}</td>
                        <td>${book.detail}</td>
                        <td><a href="${pageContext.request.contextPath}/book/toUpdate/${book.bookID}">Update</a>&nbsp;|&nbsp;<a
                                href="${pageContext.request.contextPath}/book/deleteBook/${book.bookID}">Delete</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
