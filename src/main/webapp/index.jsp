<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-900 text-gray-200 flex items-center justify-center min-h-screen">

<div class="text-center">
    <%--    <h1 class="text-4xl font-bold text-white mb-4">Welcome to the Library Management System</h1>--%>

    <section class="bg-gray-900">
        <div class="py-8 px-4 mx-auto max-w-screen-xl">
            <div class="max-w-screen-md mb-8">
                <h2 class="mb-4 text-4xl tracking-tight font-extrabold text-white">Welcome to the Library Management
                    System</h2>
            </div>
            <div class="mt-8 flex justify-between">
                <div>
                    <a href="addBook.jsp"
                       class="inline-block px-6 py-3 bg-blue-600 text-white font-medium rounded-lg hover:bg-blue-700 focus:ring-4 focus:outline-none focus:ring-blue-300 transition duration-300 ease-in-out">Add
                        Book</a>
                </div>
                <div>
                    <a href="addStudent.jsp"
                       class="inline-block px-6 py-3 bg-blue-600 text-white font-medium rounded-lg hover:bg-blue-700 focus:ring-4 focus:outline-none focus:ring-blue-300 transition duration-300 ease-in-out">Add
                        Student</a>
                </div>
                <div>
                    <a href="issueBook.jsp"
                       class="inline-block px-6 py-3 bg-blue-600 text-white font-medium rounded-lg hover:bg-blue-700 focus:ring-4 focus:outline-none focus:ring-blue-300 transition duration-300 ease-in-out">Issue
                        Book</a>

                </div>
                <div>
                    <a href="viewIssuedBooks.jsp"
                       class="inline-block px-6 py-3 bg-blue-600 text-white font-medium rounded-lg hover:bg-blue-700 focus:ring-4 focus:outline-none focus:ring-blue-300 transition duration-300 ease-in-out">View
                        Issued Books</a>

                </div>
            </div>
        </div>
    </section>
</div>

</body>
</html>
