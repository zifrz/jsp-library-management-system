<%--
  Created by IntelliJ IDEA.
  User: Zyed
  Date: 10/13/2024
  Time: 9:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.servlet_jsp.controller.BookController" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Book</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-900 text-gray-200">

<header class="mb-8">
    <nav class="bg-gray-900 border-gray-700">
        <div class="max-w-screen-xl flex items-center justify-center mx-auto p-4">
            <div class="w-full flex items-center justify-center" id="navbar-default">
                <ul class="font-medium flex space-x-8 mt-0 border-0 bg-gray-900">
                    <li>
                        <a href="addBook.jsp" class="block py-2 px-3 text-blue-500" aria-current="page">Add Book</a>
                    </li>
                    <li>
                        <a href="addStudent.jsp" class="block py-2 px-3 text-white rounded hover:text-blue-500">Add
                            Student</a>
                    </li>
                    <li>
                        <a href="issueBook.jsp" class="block py-2 px-3 text-white rounded hover:text-blue-500">Issue
                            Book</a>
                    </li>
                    <li>
                        <a href="viewIssuedBooks.jsp" class="block py-2 px-3 text-white rounded hover:text-blue-500">View
                            Issued Books</a>
                    </li>
                    <li>
                        <a href="index.jsp" class="block py-2 px-3 text-white rounded hover:text-blue-500">Home</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<div class="container mx-auto max-w-md mb-8">
    <div class="bg-gray-800 shadow-md rounded-lg p-6">
        <h2 class="text-2xl font-bold mb-4 text-white">Add Book</h2>

        <form action="addBook.jsp" method="post">
            <div class="mb-4">
                <label class="block mb-2 text-sm font-medium text-white" for="title">Title</label>
                <input type="text"
                       class="bg-gray-700 border border-gray-600 text-white text-sm rounded-lg block w-full p-2.5 placeholder-gray-400"
                       id="title" name="title" required="required"
                       placeholder="Book Title">
            </div>
            <div class="mb-4">
                <label class="block mb-2 text-sm font-medium text-white" for="author">Author</label>
                <input type="text"
                       class="bg-gray-700 border border-gray-600 text-white text-sm rounded-lg block w-full p-2.5 placeholder-gray-400"
                       id="author" name="author" required="required"
                       placeholder="Author Name">
            </div>
            <div class="mb-4">
                <label class="block mb-2 text-sm font-medium text-white" for="isbn">ISBN</label>
                <input type="text"
                       class="bg-gray-700 border border-gray-600 text-white text-sm rounded-lg block w-full p-2.5 placeholder-gray-400"
                       id="isbn" name="isbn" required="required"
                       placeholder="ISBN">
            </div>
            <input type="submit" value="Add Book"
                   class="w-full mt-4 mb-4 text-white bg-blue-600 hover:bg-blue-700 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center0">
        </form>
        <a href="<c:url value='/index.jsp'/>" class="font-medium text-primary-500 hover:underline hover:text-blue-500">Back to Home</a>
    </div>
</div>

<c:if test="${pageContext.request.method=='POST'}">
    <jsp:useBean id="bookController" class="com.example.servlet_jsp.controller.BookController"/>
    <c:catch var="exception">
        ${bookController.addBook(param.title, param.author, param.isbn)}
        <div class="mx-auto max-w-md p-4 mb-4 text-sm text-green-400 rounded-lg bg-gray-800" role="alert">Book added successfully!</div>
    </c:catch>
    <c:if test="${not empty exception}">
        <div class="mx-auto max-w-md p-4 mb-4 text-sm text-red-400 rounded-lg bg-gray-800" role="alert">Error adding book: ${exception.message}</div>
    </c:if>
</c:if>


</body>
</html>