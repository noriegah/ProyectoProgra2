
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Programación Orientada a Objetos</title>
    <link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <style>
        /* Estilo para el canvas de confetti */
        #confettiCanvas {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none; /* Hace que el canvas no interfiera con clics en otros elementos */
            z-index: 9999; /* Asegura que el confetti esté encima del resto del contenido */
        }
    </style>
</head>
<body>
    <canvas id="confettiCanvas"></canvas>

    <script>
        const canvas = document.getElementById("confettiCanvas");
        const ctx = canvas.getContext("2d");

        canvas.width = window.innerWidth;
        canvas.height = window.innerHeight;

        let confettiArray = [];
        const colors = ["#FFC107", "#E91E63", "#9C27B0", "#03A9F4", "#4CAF50", "#FFEB3B"];
        let animationId;

        class Confetti {
            constructor() {
                this.x = Math.random() * canvas.width;
                this.y = Math.random() * canvas.height - canvas.height;
                this.size = Math.random() * 10 + 5;
                this.speed = Math.random() * 3 + 2;
                this.color = colors[Math.floor(Math.random() * colors.length)];
            }

            update() {
                this.y += this.speed;
                if (this.y > canvas.height) {
                    this.y = 0 - this.size;
                    this.x = Math.random() * canvas.width;
                }
            }

            draw() {
                ctx.fillStyle = this.color;
                ctx.fillRect(this.x, this.y, this.size, this.size);
            }
        }

        function initConfetti() {
            confettiArray = [];
            for (let i = 0; i < 200; i++) {
                confettiArray.push(new Confetti());
            }
        }

        function animateConfetti() {
            ctx.clearRect(0, 0, canvas.width, canvas.height);
            confettiArray.forEach(confetti => {
                confetti.update();
                confetti.draw();
            });
            animationId = requestAnimationFrame(animateConfetti);
        }

        initConfetti();
        animateConfetti();

        setTimeout(() => {
            cancelAnimationFrame(animationId);
            canvas.remove();
        }, 3000);

        window.addEventListener("resize", () => {
            canvas.width = window.innerWidth;
            canvas.height = window.innerHeight;
            initConfetti();
        });
    </script>
    <style>
    *{
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      text-decoration: none;
      list-style: none;
     } 
        body{
        font-family: 'Roboto', sans-serif;
    }
    
    .header {
        display: flex;
        align-items: center;
        height: 70vh;
        min-height: 700px;
    }
    
    .container {
        max-width: 1200px;
        margin: 0 auto;
    }
    
    .menu {
        position: absolute;
        top: 10px;
        left: 0;
        display: flex;
        align-items: center;
        justify-content: space-between;
    }
    
    .logo {
        font-weight: 800;
        font-size: 25px;
        color: #FC697A;
        text-transform: uppercase;   
    }
    .menu .navbar ul li {
        position: relative;
        float: left;  
    }
    
    .menu .navbar ul li a {
        font-size: 17px;
        font-weight: 600;
        padding: 20px;
        color: #656875;
        display: block;
        text-transform: uppercase;
    }
    
    .menu .navbar ul li a:hover {
        color: #12114D;
    }
    
    #menu {
        display: none; 
    }
    .menu-icono {
        width: 25px; 
    }
    
    .menu label {
        cursor: pointer; 
        display: none;
    }
    
    
    .header-content{
        margin-top: 100px;
        display: flex;
        padding: 50px;
        background-color: #F5F9FC;
        border-radius: 25px;
    }
    
    .header-txt {
        width: 50%; 
    }
    .header-txt h1{
        font-size: 50px;
        line-height: 70px;
        color: #12114D;
        text-transform: capitalize;
        font-weight: 800;
        margin-bottom: 25px;
    }
    
    .header-txt p {
        font-size: 16px;
        color: #656875;
        margin-bottom: 35px;
    }
    
    .btn-1{
        display: inline-block;
        padding: 13px 25px;
        background-color: #FC697A;
        font-size: 17px;
        color: #FFFFFF;
        border-radius: 15px;
        text-transform: capitalize;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
    }
    
    .btn-1:hover {
        background-color: #E95F6F; 
    }
    
    .header-img img {
       width: 50%;
       text-align: right;
    }
    
    .header-img img {
       width: 400px;  
    }
    
    .general {
       padding: 100px 0;
       display: flex;
    }
    
       .general-1 {
       width: 70%;
       display: flex;
    }
       .general-card {
       padding: 40px;
       text-align: center;
       margin: 0 10px;
       border-radius: 25px;
       box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
       background-color: #f5f5dc;
    }
    
    .general-card img {
       width: 200px;
       margin-bottom: 20px;
    }
    
    .general-card h3 {
       font-size: 18px;
       color: #12114D;
       margin-bottom: 15px;
    }
    
    .general-card p {
       font-size: 16px;
       color: #656875;
    }
    
    .general-2 {
       width: 30%;
       margin: 0 35px;
    }
    
    h2{
       font-size: 40px;
       line-height: 50px;
       color: #12114D;
       margin-bottom: 20px;
    }
    
    .general-2 p {
       font-size: 16px;
       color: #656875;
       margin-bottom: 35px;
    }
    
    .btn-2 {
       display: inline-block;
       padding: 13px 25px;
       color: #12114D;
       font-size: 17px;
       text-transform: capitalize;
       border-radius: 15px;
       box-shadow: 0 0 15px rgba(0, 0, 0, 0.2); /* Remover espacio en rgba */

    }
    
    .btn-2:hover {
       background-color: #FC697A;
       color: #FFFFFF;
    }
    
    .bg-1{
       width: 33%;
       height: 400px;
       background-image: url(vistas/imagenes/clase.jpg);
       background-position: center center;
       background-repeat: no-repeat;
       background-size: cover;
    }
    
    .bg-2{
       width: 33%;
       height: 400px;
       background-image: url(vistas/imagenes/herencia.png);
       background-position: center center;
       background-repeat: no-repeat;
       background-size: cover;
    }
    
    .bg-3{
       width: 33%;
       height: 400px;
       background-image: url(vistas/imagenes/polimorfismo.jpg);
       background-position: center center;
       background-repeat: no-repeat;
       background-size: cover;
       
    }
    
    .information {
       padding: 100px 0;
       background-color: #F5F9FC;
       text-align: center;
    }
    
    .information-content {
       margin-top: 70px;
       display: flex;
    }
    
    .information-1 {
       margin: 0 25px;
    }
    
    .information-1 h3 {
       text-transform: capitalize;
       font-size: 30px;
       color: #12114D;
       margin-bottom: 16px;
    }
    .information-1 p {
       font-size: 25px;
       color: #656875;
       margin-bottom: 35px;
    }
    
    .footer {
       padding: 50px 0;
       display: flex;
       align-content: center;
       justify-content: space-between;
    }
    
    .footer-txt{
       padding-right: 500px;
    }
    
    .footer-txt p {
       font-size: 16px;
       color: #656875;
       margin-top: 25px;
    }
    
    .footer-socials img{
       display: flex;
    }
    
    .footer-socials img {
       margin: 0 15px;
       width: 30px;
       height: 30px;
    }
    
    @media(max-width:991px){
       .menu {
       padding: 30px;
    }
    .menu label {
       display: initial;
    }
    
    .menu .navbar {
       position: absolute;
       top: 100%;
       right: 0;
       left: 0;
       background-color: #F0EFEF;
       display: none;
    }
    .menu .navbar ul li{
       width: 100%
    }
    #menu:checked ~ .navbar{
       display: initial;
       
    }
    .header-content{
      height: 0vh;
      min-height: 1000px;
      background-color: #F5F9FC;
      
     }
     .header-content {
       flex-direction: column;
       padding: 50px 30px 20px 30px;
       margin:0;
    }
    .header-txt {
       width: 100%;
       margin-right: 0;
       text-align: center;
       margin-bottom: 25px;   
    }
    .header-img {
       width: 100%;
       text-align: center;
       }
       .header-img img {
       width: 100%;
       
       }
       .general {
       padding: 30px;
       flex-direction: column;
       }
       .general-1 {
       width: 100%;
       flex-direction: column;
       order: 2;
       }
       
       .general-2 {
       width: 100%;
       margin: 0 0 40px 0;
       text-align: center;
       }
       .general-card {
       margin: 0 0 25px 0;
       }
       .bg-1 , .bg-2 , .bg-3 {
       width: 100%
       }
       .information {
       padding: 30px;
       }
       .information-content{
       margin-top: 30px;
       flex-direction: column;
       
       }
       .information-1{
       text-align: center;
       margin: 0 0 45px 0;
       }
       .footer{
       flex-direction: column;
       align-items: center;
       text-align: center;
       }
       .footer-txt{
       padding-right: 0;
       }
       .footer-socials {
       margin-top: 50px;
       }
    }
</style>
    <header class="header">
        <div class="menu container">
            <a href="#" class="logo">Menú</a>
            <input type="checkbox" id="menu"/>
            <label for="menu">
                <img src="vistas/imagenes/menu.png" class="menu-icono" alt="">
            </label>
            <nav class="navbar">
                <ul>
                    <li><a href="programacion.jsp" target="_blank">Programación Orientada a Objetos</a></li>
                    <li><a href="conexiones.jsp" target="_blank">Conexiones a bases de datos</a></li>
                </ul>  
            </nav>
        </div>
        
        <div class="header-content container">
            <div class="header-txt">
                <h1>Programación Orientada a Objetos</h1>
                <p>
                    La programación orientada a objetos (POO) es un paradigma de programación que organiza el software 
                    alrededor de "objetos" en lugar de "acciones". Un objeto puede ser visto como una combinación de 
                    datos y comportamientos que operan sobre esos datos. A continuación, se presentan los conceptos 
                    fundamentales de la POO.
                    
                </p>
                <a href="https://profile.es/blog/que-es-la-programacion-orientada-a-objetos/" class="btn-1">Click para más información</a>
            </div>
            <div class="header-img">
                <img src="vistas/imagenes/POO.png" alt="">
            </div>
        </div>
    </header>
    
    <section class="general-container">
        <div class="general-1">
            <div class="general-card">
                <img src="vistas/imagenes/clases.jpg" alt="im"/>
                <h3>Clases</h3>
                <p>Una clase es como un plano o plantilla 
                    que define las propiedades y comportamientos
                    comunes de un tipo de objeto. Un objeto es una
                    instancia de una clase; en otras palabras, es 
                    la materialización de la clase en la memoria, 
                    con atributos y métodos definidos.
</p>
            </div>
            
            <div class="general-card">
                <img src="vistas/imagenes/herencia.png" alt=""/>
                <h3>Herencia</h3>
                <p>Permite crear nuevas clases a partir de clases 
                   existentes. La nueva clase, o subclase, hereda 
                   atributos y métodos de la clase original 
                   superclase).
                   Facilita la reutilización de código y permite 
                   extender la funcionalidad de clases existentes 
                   sin modificarlas directamente.
                </p>
            </div>
            
            <div class="general-card">
                <img src="vistas/imagenes/poli.jpg" alt="">
                <h3>Polimorfismo</h3>
                <p>Permite que diferentes clases respondan de 
                    distintas maneras al mismo mensaje o 
                    método.
                    Existen dos tipos principales: polimorfismo
                    de sobrecarga (mismo método, diferentes 
                    parámetros) y polimorfismo de sobrescritura 
                    (una subclase redefine un método de su superclase).             
                </p>
            </div>
        </div>    
        
        <div class="general-2">
            <h2>4 Pilares de POO</h2>
            <p>1. Encapsulamiento
               2. Abstracción
               3. Herencia
               4. Polimorfismo
            </p>
            <a href="https://gavilanch.wordpress.com/2018/07/05/los-4-pilares-de-la-programacion-orientada-a-objetos/" class="btn-2">Información</a>
        </div>
    </section>
    
    <section class="general-container">
        <div class="general-2">
            <h2>Dato Curioso</h2>
            <p>
                POO en Videojuegos: Muchos videojuegos se desarrollan 
                con POO porque los personajes, objetos y entornos pueden
                ser modelados como objetos interactuando en un mundo 
                virtual. Esto hace que la creación de personajes y sus 
                interacciones sean más intuitivas y escalables.
            </p>
            <a href="https://www.testgorilla.com/es/blog/preguntas-sobre-programacion-orientada-a-objetos/" class="btn-2">Click para mas Información</a>
        </div>
        
        <div class="general-1">
            <div class="general-card bg-1"></div>
            <div class="general-card bg-2"></div>
            <div class="general-card bg-3"></div>
        </div>    
    </section>
    
    <main class="information">
        <h2>Para comenzar a trabajar con POO le recomendamos descargar:</h2>
        <div class="information-content container">
            <div class="information-1">
                <h3>Apache Netbeans 18</h3>
                <p>
                    Apache NetBeans 18 es la versión más reciente del 
                    Entorno de Desarrollo Integrado (IDE) llamado 
                    NetBeans, mantenido por la Fundación Apache. 
                    Es una herramienta utilizada principalmente para el 
                    desarrollo de aplicaciones en diferentes lenguajes de 
                    programación, siendo Java su especialidad. Este IDE 
                    proporciona un entorno completo con características 
                    que ayudan a programadores y desarrolladores a escribir, 
                    depurar y optimizar el código de sus aplicaciones.
                </p>
                
                <img src="vistas/imagenes/apache.png" alt="Descripción de la imagen" width="300" height="200">
                <a href="https://netbeans.apache.org/front/main/download/nb18/" class="btn-2">Descargue ya</a>
            </div>
            <div class="information-1">
                <h3>BlueJ</h3>
                <p>
                    es un entorno de desarrollo integrado (IDE) diseñado 
                    específicamente para la enseñanza y el aprendizaje de 
                    programación orientada a objetos en Java. Creado por Michael
                    Kölling y John Rosenberg, BlueJ es ideal para principiantes, 
                    ya que presenta una interfaz simple e intuitiva que ayuda a 
                    los estudiantes a entender conceptos básicos y avanzados de
                    programación y estructura de objetos de manera visual.
                </p>
                <img src="vistas/imagenes/blue.png" alt="Descripción de la imagen" width="300" height="200">
                <a href="https://www.bluej.org/" class="btn-2">Descargue ya</a>
            </div>
        </div>
    </main>
    
    <footer class="footer container">
        <div class="footer-txt">
            <a href="#" class="logo">Programación II UMG</a>
            <p>Página Web</p>
        </div>
        
        <div class="footer socials">
            <a href="https://www.umg.edu.gt/"><img src="vistas/imagenes/mariano.png"width="100" height="100"></a>
            <a href="#"><img src="vistas/imagenes/cmc.png" alt=""></a>
            <a href="#"><img src="vistas/imagenes/cmc.png" alt=""></a>
        </div>
    </footer>

    
</body>
</html>


