<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title>Proyecto Final</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f4;
            flex-direction: column; /* Para que el logo y título queden centrados */
        }
        .login-container {
            background: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            margin-top: 20px; /* Para separar del título y logo */
        }
        .header {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
            text-align: center; /* Para centrar el texto */
        }
        .header img {
            width: 80px; /* Ajusta el tamaño del logo */
            margin-right: 15px;
        }
        .header h1 {
            font-size: 2rem; /* Tamaño del título */
            margin: 0; /* Elimina margen superior e inferior */
        }
    </style>
</head>
<body>
    <div class="header">
        <img src="logo.jpg" alt="Logo" />
        <h1 class="h5">Portal Estudiantil</h1>
    </div>
    
    <div class="login-container">
        <img src="user.png" width="80" alt="User Icon"/>
        <p class="text-center"><strong>Inicie Sesión</strong></p>
        <form action="Controlador">
            <div class="form-group">
                <label for="correo">Correo:</label>
                <input class="form-control" type="email" id="txtcorreo" name="txtcorreo" placeholder="Ingrese Correo" required> 
            </div>
            <div class="form-group">
                <label for="clave">Contraseña:</label>
                <input class="form-control" type="password" id="txtclave" name="txtclave" placeholder="Ingrese Contraseña" required>
            </div>
            <div class="text-center">
                <input class="btn btn-danger btn-block" type="submit" name="accion" value="Ingresar">
            </div>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
