<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Workshop3 - List</title>

    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <style rel="stylesheet">
        <%@include file="../theme/css/sb-admin-2.min.css" %>
    </style>
    <style type="text/css" rel="stylesheet">
        <%@include file="../theme/vendor/fontawesome-free/css/all.min.css" %>
    </style>
    <script src="https://kit.fontawesome.com/yourcode.js"></script>
</head>
<body>

<%@include file="/META-INF/fragments/header.jsp" %>

<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
        <a href="/users/add.jsp" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i>Dodaj użytkownika</a>
    </div>


    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Lista użytkowników</h6>
        </div>

        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                    <tr>
                        <th>id</th>
                        <th>Nazwa użytkownika</th>
                        <th>Email</th>
                        <th>Akcja</th>
                    </tr>
                    <tbody>
                    <c:forEach items="${users}" var="user">
                        <tr>
                            <td>${user.getId()}</td>
                            <td>${user.getUserName()}</td>
                            <td>${user.getEmail()}</td>
                            <td><a href="/user/delete?id=${user.getId()}">Usuń </a><a
                                    href="/user/edit?id=${user.getId()}">Edit </a><a
                                    href="/user/show?id=${user.getId()}">Pokaż</a></td>
                        </tr>
                    </c:forEach>

                    </tbody>
                    </thead>
                </table>
            </div>
        </div>


        <%@include file="/META-INF/fragments/footer.jsp" %>

</body>
</html>
