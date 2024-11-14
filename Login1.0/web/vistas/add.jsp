
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <title>Agregar Usuario</title>
    <style>
        body {
            background-color: #f8f9fa; /* Color de fondo suave */
        }
        .container {
            margin-top: 50px;
            padding: 20px;
            border-radius: 8px;
            background-color: #ffffff; /* Fondo blanco para el formulario */
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Sombra para el efecto de elevación */
        }
        h1 {
            margin-bottom: 20px;
        }
        .btn-primary {
            margin-top: 10px;
        }
        a {
            margin-top: 10px;
            display: inline-block;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="text-center">
            <h1>Agregar Estudiantes</h1>
            <form>
                <div class="form-group">
                    <label for="txtID">ID:</label>
                    <input class="form-control" type="text" name="txtID" id="txtID" required>
                </div>
                <div class="form-group">
                    <label for="txtNom">Nombres:</label>
                    <input class="form-control" type="text" name="txtNom" id="txtNom" required>
                </div>
                <div class="form-group">
                    <label for="txtCorreo">Correo:</label>
                    <input class="form-control" type="email" name="txtCorreo" id="txtCorreo" required>
                </div>
                <div class="form-group">
                    <label for="txtClave">Clave:</label>
                    <input class="form-control" type="password" name="txtClave" id="txtClave" required>
                </div>
                <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
                <a href="Controlador?accion=listar" class="btn btn-secondary">Regresar</a>
            </form>
        </div>
    </div>
</body>
</html>
