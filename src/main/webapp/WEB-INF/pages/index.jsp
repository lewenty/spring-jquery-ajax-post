<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>

    <%--bootstrap css--%>
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">

    <%--bootstrap js--%>
    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

    <%--jquery js--%>
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js"></script>

</head>
<body>
<style>

    .personDiv {
        margin: 0px auto;
        margin-top: 10px;
        padding: 20px;
        width: 50%;
        border: 1px solid #000;
    }

</style>

<script>
    $(document).ready(function () {

        $("#btnFormPost").click(function () {

            $.ajax({
                type: "post",
                dataType: "json",
                url: "http://localhost:8080/person/add.htm",
                data: 'firstname=' + $("#firstname").val() + "&lastname=" + $("#lastname").val() + "&email=" + $("#email").val(),
                success: function (response) {

                    $("#resFirstName").text(response["firstname"]);
                    $("#resLastName").text(response["lastname"]);
                    $("#resEmail").text(response["email"]);
                },
                error: function () {
                    alert('Post İşlemi Esnasında Bir Hata Oluştu');
                }//error finish
            });//ajax finish
        });//click finish

    });
</script>

<div class="personDiv">
    <form role="form" name="personForm" method="POST" onsubmit="return false;">
        <div class="form-group">
            <label for="firstname">Ad</label>
            <input type="text" class="form-control" name="firstname" id="firstname" placeholder="Ad">
        </div>

        <div class="form-group">
            <label for="lastname">Soyad</label>
            <input type="text" class="form-control" name="lastname" id="lastname" placeholder="Soyad">
        </div>
        <div class="form-group">
            <label for="email">E-Posta</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="E-Posta">
        </div>
        <button type="submit" id="btnFormPost" class="btn btn-primary">Gonder</button>
    </form>
</div>

<div class="personDiv" id="result">
    <div class="form-group">
        <label>Adı : </label>
        <label id="resFirstName"></label>
    </div>
    <div class="form-group">
        <label>Soyadı : </label>
        <label id="resLastName"></label>
    </div>
    <div class="form-group">
        <label>E-Posta : </label>
        <label id="resEmail"></label>
    </div>
</div>

</body>
</html>
