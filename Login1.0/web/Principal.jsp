<!DOCTYPE html>
<html>
<head>
    <!-- Metaetiquetas y enlaces de estilo -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Portal Estudiantil UMG Quiché</title>
    <link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>
    
    <style>
        /* Estilo general para el fondo */
        body {
            background-image: url('vistas/imagenes/fondo.jpg');
            background-size: cover; /* Escala la imagen para cubrir toda la pantalla */
            background-repeat: no-repeat; /* Evita que la imagen se repita */
            background-position: center; /* Centra la imagen en la pantalla */
        }

        /* Contenedor de cabecera y botón de cierre de sesión */
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
        }

        h1 {
            text-align: center;
            flex: 1;
        }

        .logout-btn {
            margin-left: 20px;
        }

        /* Estilo para el título de programación */
        .programacion-title {
            color: red;
            font-weight: bold;
            text-align: center;
            margin-top: 20px;
            font-size: 36px;
            animation: move 1s ease-in-out infinite;
        }

        @keyframes move {
            0% { transform: translateX(-5px); }
            50% { transform: translateX(5px); }
            100% { transform: translateX(-5px); }
        }

        /* Estilos para los contenedores de información */
        .info-container {
            display: flex;
            justify-content: space-around;
            margin-top: 40px;
            height: auto;
            padding: 5px 0; /* ajusta el padding según prefieras */
            
        }

        .card, .card1 {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            width: 100%;
        }

        /* Estilos adicionales para el contenedor .card */
        .card {
            background-color: #f8d7da;
            width: 45%;
            margin: 0 auto;
            font-family: 'Roboto', sans-serif;
        }

        /* Ajuste de estilos en .info-container1 */
        .info-container1 {
            background-color: #B2E1B9;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 800px;
            margin: 20px auto;
            font-family: Arial, sans-serif;
            border: 1px solid #A2D9A1;
        }

        /* Estilos para los encabezados y listas dentro de .info-container1 */
        h3 {
            color: #4A7C31;
            text-align: center;
            margin-bottom: 15px;
            font-weight: bold;
            font-size: 40px;
            font-family: 'Roboto', sans-serif;
        }

        ul {
            list-style-type: none;
            padding: 0;
            font-size: 24px;
            font-family: 'Roboto', sans-serif;
        }

        li {
            font-weight: bold;
            margin-top: 10px;
            color: #333;
        }

        /* Imagen con bordes redondeados en .info-container1 */
        img {
            display: block;
            margin: 0 auto;
            border-radius: 5px;
        }

        /* Estilo para el contenedor de los servicios */
        .services {
            display: flex;
            flex-direction: column;
            width: 45%;
            margin: 0 auto;
        }

        .service {
            background-color: #F5F5DC;
            border: 1px solid #ddd;
            padding: 15px;
            margin-bottom: 20px;
            border-radius: 8px;
            text-align: center;
        }

        .service img {
            width: 100%;
            height: auto;
            border-radius: 5px;
        }

        .service h3 {
            color: #333;
            font-size: 1.5em;
            margin: 10px 0;
        }

        .service p {
            color: #666;
            font-size: 1.1em;
            text-align: center;
        }
    
    </style>
</head>
<body>
    <!-- Cabecera con el título y botón de cierre de sesión -->
    <header class="header">
        <h1>Portal Estudiantil UMG Quiché</h1>
        <a class="btn btn-danger logout-btn" href="Controlador?accion=cerrarSesion">Cerrar Sesión</a>
    </header>
    
    <!-- Contenedor principal -->
    <div class="container">
        <!-- Título animado y botón de lista de estudiantes -->
        <a class="btn btn-success btn-lg" href="Controlador?accion=listar">Listar Estudiantes</a>
        <h2 class="programacion-title">Programación II</h2>

        <!-- Contenedor de introducción al curso y servicios en la misma fila -->
        <div class="info-container">
            <div class="card">
                <h4 style="font-size: 1.5em; text-align: center; font-weight: bold;">INTRODUCCIÓN AL CURSO</h4>
                <p style="text-align: justify; font-size: 18px;">
                    Bienvenidos al curso de Programación Orientada a Objetos (POO) en un Entorno Java con Conexión a Bases de Datos y Herencia.
                    Este curso está diseñado para proporcionar una comprensión sólida de los conceptos fundamentales de POO y su aplicación en el
                    desarrollo de software utilizando Java.
                </p>
                <div style="text-align: center;">
                    <img src="vistas/imagenes/Imagen1.jpg" alt="Imagen del curso" style="width: 80%; height: 300px;">
                </div>
            </div>
            <main class="services container">
                <div class="service">
                    
                    <h3>Definición de JAVA</h3>
                    <p>Es un lenguaje de programación de propósito general, orientado a objetos y de alto nivel, diseñado para ser portátil y ejecutar aplicaciones 
                        en cualquier dispositivo que tenga una máquina virtual de Java (JVM). Fue desarrollado por Sun Microsystems en 1995, y es ampliamente utilizado 
                        para crear aplicaciones móviles, de escritorio, web y empresariales debido a su seguridad, escalabilidad y capacidad multiplataforma.</p>
                </div>
                <div class="service">
                    
                    <h3>Funcionalidad de JAVA</h3>
                    <p>Permite desarrollar aplicaciones multiplataforma, gracias a su filosofía de "escribe una vez, ejecuta en cualquier lugar" (WORA). 
                        Esto se logra mediante la compilación de código en un bytecode que puede ejecutarse en cualquier máquina virtual Java (JVM) sin importar
                        el sistema operativo subyacente. Incluye manejo automático de memoria (recolección de basura) y una gran cantidad de bibliotecas estándar
                        para desarrollo de aplicaciones web, móviles y empresariales. Además, Java es seguro y escalable, lo que lo convierte en una opción popular 
                        para aplicaciones de misión crítica.</p>
                    
                </div>
                <div class="service">
                    
                    <h3>¿Sabías qué?</h3>
                    <p>Java inicialmente fue creado para dispositivos electrónicos como televisores y videoconsolas, no para computadoras de escritorio o 
                        servidores. Originalmente, el lenguaje se llamó Oak en honor a un roble que crecía fuera de la oficina de James Gosling, su creador. Sin 
                        embargo, al descubrir que el nombre ya estaba registrado, decidieron llamarlo "Java" en referencia al café de la isla de Java, que también
                        inspiró el icónico logo de la taza de café.</p>
                    <img src="vistas/imagenes/javalogo.png" alt="Imagen del curso" style="width: 50%; height: 200px;">
                </div>
            </main>
        </div>

        <!-- Contenedor de información adicional sobre el curso -->
        <div class="info-container1">
            <div class="card1">
                <h3>¿QUÉ APRENDERÁ?</h3>
                <img src="vistas/imagenes/duda.png" alt="Imagen del curso" style="width: 50%; height: 300px;">
                <ul>
                    <li>1. Fundamentos de la programación Orientada a objetos</li>
                    <p>- Aprenderás los pilares básicos de la POO: abstracción, encapsulamiento, polimorfismo y herencia.</p>
                    <p>- Comprenderás cómo diseñar y estructurar programas modulares y reutilizables.</p>
                    <li>2. Java como Lenguaje Orientado a Objetos</li>
                    <p>- Introducción al lenguaje Java y su sintaxis.</p>
                    <p>- Creación y manipulación de clases, atributos y métodos.</p>
                    <li>3. Conexión a Base de Datos</li>
                    <p>- Implementación de operaciones CRUD en tu aplicación.</p>
                    <li>4. Herencia y Reutilización de Código</li>
                    <p>- Uso del concepto de herencia para modelar relaciones jerárquicas entre clases.</p>
                </ul>
            </div>
        </div>

        <!-- Navegación adicional con enlaces a otros temas -->
        <nav class="navbar">
            <h4 style="font-size: 1.7em; font-weight:bold;">Para seguir visualizando haga click en los títulos de su interés</h4>
            <ul>
                <li><a href="programacion.jsp" target="_blank">Programación Orientada a Objetos</a></li>
                <li><a href="conexiones.jsp" target="_blank">Conexiones a bases de datos</a></li>
            </ul>
        </nav>
    </div>
</body>
</html>


