<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html lang="es">
<head> 
    <title>ごい: Practica tu vocabulario</title>
    <!--Bootstrap CSS-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h1>HOLA MUNDO :D</h1>
    <h2>こんばんは</h2>
    <h3 id="goi"></h3>
    
    <!--Input-->
    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col">
                <div class="input-group input-group-lg">
                        <input id="kaitou" type="text" class="form-control" placeholder="Ingresa tu respuesta" aria-describedby="inputGroup-sizing-default">
                </div>
            </div>
        </div>
        <br>
        <div class="row justify-content-md-center text-center">
            <div class="col">
                <button id="send" type="button" class="btn btn-success">Responder</button>
            </div>
        </div>
    </div>
    
    <footer class="footer fixed-bottom">
        <div class="container text-center">
            <span class="text-footer">Creado por <a href="https://github.com/zero23ku">Zero23ku</a></span>
        </div>
    </footer>

    <!--Bootstrap js-->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="js/script.js"></script>
</body>