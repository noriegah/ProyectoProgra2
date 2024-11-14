<%@ page import="modelo.Persona" %>
<%@ page import="ModeloDao.PersonDao" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <title>Modificar Estudiantes</title>
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
        .btn-primary, .btn-secondary {
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
            <h1>Modificar Estudiantes</h1>
            <%
                String idPerString = (String) request.getAttribute("idper");
                int id = -1; // Valor por defecto en caso de error
                
                // Verificar si se ha proporcionado un ID válido
                if (idPerString != null && !idPerString.isEmpty()) {
                    try {
                        id = Integer.parseInt(idPerString);
                    } catch (NumberFormatException e) {
                        out.println("Error: ID inválido.");
                    }
                } else {
                    out.println("Error: No se ha proporcionado un ID.");
                }

                // Solo proceder si el ID es válido
                if (id != -1) {
                    PersonDao pdao = new PersonDao();
                    Persona p = (Persona) pdao.list(id);
                    
                    if (p != null) {
            %>
                        <form>
                            <div class="form-group">
                                <label for="txtID">ID:</label>
                                <input class="form-control" type="text" name="txtID" value="<%= p.getId() %>" readonly>
                            </div>
                            <div class="form-group">
                                <label for="txtNom">Nombres:</label>
                                <input class="form-control" type="text" name="txtNom" value="<%= p.getNombre() %>">
                            </div>
                            <div class="form-group">
                                <label for="txtCorreo">Correo:</label>
                                <input class="form-control" type="email" name="txtCorreo" value="<%= p.getCorreo() %>">
                            </div>
                            <div class="form-group">
                                <label for="txtClave">Clave:</label>
                                <input class="form-control" type="password" name="txtClave" value="<%= p.getClave() %>">
                            </div>
                            <input class="btn btn-primary" type="submit" name="accion" value="Actualizar">
                            <a href="Controlador?accion=listar" class="btn btn-secondary">Regresar</a>
                        </form>
            <%
                    } else {
                        out.println("No se encontró la persona con el ID proporcionado.");
                    }
                }
            %>
        </div>
    </div>
</body>
</html>
