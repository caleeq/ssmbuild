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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
</head>
<body>
<section class="section">
    <div class="hero">
        <div class="hero-body">
            <div class="container">
                <h1 class="title">All Books Here</h1>
                <h2 class="subTitle">Reading thinking working and living</h2>
            </div>
        </div>
    </div>

    <div class="level">
        <div class="level-item">
            <a class="button" href="${pageContext.request.contextPath}/book/toAddBook">Add Book</a>
        </div>
        <div class="level-item">
            <form action="${pageContext.request.contextPath}/book/queryBook" method="post" class="">
                <div class="field has-addons">
                    <p class="control">
                        <input type="text" name="queryBookName" class="input" placeholder="Input Book Name">
                    </p>
                    <p class="control">
                        <button type="submit" class="button">Search</button>
                    </p>
                </div>
            </form>
        </div>
    </div>

    <div class="level">
        <div class="level-item">
            <div class="column is-two-thirds">
                <table class="table is-bordered is-striped is-narrow is-hoverable is-fullwidth">
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
                            <td><a class="tag is-info"
                                   href="${pageContext.request.contextPath}/book/toUpdate/${book.bookID}">Update</a>&nbsp;|&nbsp;
                                <span class="tag is-warning">Delete
                                <a class="delete"
                                   href="javascript:if(confirm('Confirm to delete?'))location='${pageContext.request.contextPath}/book/deleteBook/${book.bookID}'"></a>
                            </span>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="level">
        <div class="level-item">
            <span class="title is-4 is-danger">${error}</span>
        </div>
    </div>
</section>
</body>
</html>
