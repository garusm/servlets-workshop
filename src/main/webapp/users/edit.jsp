<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Workshop3 - Add</title>

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
        <a href="/users/list" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i>Lista użytkowników</a>
    </div>

    <p1>Add</p1>
    <div class="card position-relative">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Edycja użytkownika</h6>
        </div>
        <div class="card-body">
            <form class="form-group" method="post">
                Nazwa<br>
                <input type="text" value="${user.getUserName()}" name="username"><br><br>
                Email<br>
                <input type="email" value="${user.getEmail()}" name="email"><br><br>
                Hasło<br>
                <input type="password" placeholder="Hasło użytkownika" name="password"><br><br>
                <input class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="submit" value="Edytuj">
            </form>

        </div>
    </div>


    <%@include file="/META-INF/fragments/footer.jsp" %>

</body>
</html>
