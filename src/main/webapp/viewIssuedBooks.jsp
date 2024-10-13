<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Issued Books</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-900 text-gray-200">

<header class="mb-8">
    <nav class="bg-gray-900 border-gray-700">
        <div class="max-w-screen-xl flex items-center justify-center mx-auto p-4">
            <div class="w-full flex items-center justify-center" id="navbar-default">
                <ul class="font-medium flex space-x-8 mt-0 border-0 bg-gray-900">
                    <li>
                        <a href="addBook.jsp" class="block py-2 px-3 text-white rounded hover:text-blue-500"
                           aria-current="page">Add Book</a>
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
                        <a href="viewIssuedBooks.jsp" class="block py-2 px-3 text-blue-500">View
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

<div class="mx-auto max-w-lg mb-8">

    <h1 class="text-2xl font-bold mb-4 text-white">Issued Books</h1>

    <div class="relative overflow-x-auto shadow-md sm:rounded-lg mb-8">
        <table class="w-full text-sm text-left rtl:text-right text-gray-400">
            <thead class="text-xs text-gray-400 uppercase bg-gray-700">
            <tr>
                <th scope="col" class="px-6 py-3">Book Title</th>
                <th scope="col" class="px-6 py-3">Author</th>
                <th scope="col" class="px-6 py-3">Student Name</th>
            </tr>
            </thead>

            <tbody>
            <jsp:useBean id="issuedBookController" class="com.example.servlet_jsp.controller.IssuedBookController"/>
            <c:forEach var="issuedBookWithDetails" items="${issuedBookController.issuedBooks}">
                <tr class="odd:bg-gray-900 even:bg-gray-800 border-b border-gray-700">
                    <td class="px-6 py-4">${issuedBookWithDetails.book.title}</td>
                    <td class="px-6 py-4">${issuedBookWithDetails.book.author}</td>
                    <td class="px-6 py-4">${issuedBookWithDetails.student.name}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <a href="<c:url value='/index.jsp'/>" class=" font-medium text-primary-500 hover:underline hover:text-blue-500">Back
        to Home</a>
</div>
</body>
</html>
