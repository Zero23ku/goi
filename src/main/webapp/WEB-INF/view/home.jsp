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
<body class="site">
    <!--Input-->
    <main class="site-content">
        <div class="container">
            <div class="row justify-content-md-center">
                <div class="col-sd-3 col-md-3 col-lg-3 col-xs-5">
                    <img id="p3mc" src="img/p3mc.png">
                </div>
                <div id="goiContent" class="col">
                    <h3 id="goi"></h3>
                </div>
            </div>
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
                    <button id=="again" type="button" class="btn btn-info">Siguiente Palabra</button>
                </div>
            </div>
            <br>
            <br>
            <div id="Instructions" class="row justify-content-md-center">
                <ol>
                    <li>Escribe el significado de la palabra que aparece en pantalla.</li>
                    <li>Presiona "Responder"</li>
                    <li>○: Correcto - ×: Incorrecto</li>
                </ol>
            </div>
        </div>
    </main>
   
    <footer class="footer">
        <div class="container text-center">
            <span class="text-footer">Creado por <a href="https://github.com/zero23ku">Zero23ku</a></span>
        </div>
    </footer>

    <!--Bootstrap js-->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="js/script.js"></script>
</body>