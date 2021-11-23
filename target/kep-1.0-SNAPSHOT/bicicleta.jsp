
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <link href="estilo.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Un día en bicicleta</title>
    </head>
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <img src="logob.png" alt="" width="115" height="100">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link text-white" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="medellin.jsp">Medellín</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="santafe.jsp">Santa Fé</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="sanjeronimo.jsp">San Jerónimo</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="jardin.jsp">Jardín</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="sanrafael.jsp">San Rafael</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="guatape.jsp">Guatapé</a>
                    </li>
                </ul>

            </div>
        </nav>
    </div>
</header>
<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col">
                <div class="jumbotron " >
                    <h1 class="display-4 text-center">Un día en Bicicleta!</h1>
                    <p class="text-center"><img class="center" src="dia2.jpg" width="450px" height="280px" ></p>
                </div>
            </div>
        </div>
    </div>
    <br> 
    <hr> 
    <br>

    <div class="container">
        <div class="row">
            <h1 class="text-sm-center display-3">Sitio</h1>
            <p class="h5">Únase a nosotros en un viaje de aventura por la ciudad, haciendo una parada en algunos de los lugares culturalmente más importantes que Medellín tiene para ofrecer. <br>Descubra la infraestructura ciclista única de la ciudad y sus nuevos enfoques que le otorgaron el título de la ciudad más innovadora del mundo.</p>
            <br>
            <br>
            <hr>
            <h3 class="text-sm-center display-4">Algunas actividades</h3>
            <br>
            <br>
            <br>
            <ul class="text-center list-unstyled">
                <li>Parada en el Museo de Arte Moderno</li>
                <li>Parada en el Parque de las Luces en la Alpujarra</li>
                <li>Parada en Parques de Rio</li>
            </ul>
            <hr>
            <br>
            <p class="text-center"><img class="center" src="dia1.jpg" width="450px" height="280px" ></p>
            <br>
            <p class="lead text-center">Si quieres información más detallada de este sitio da click en el siguiente botón.</p>
            <br>
            <p class="text-center"><a target="_blank" href="https://www.viator.com/es-CO/tours/Medellin/Medellin-Bike-Tour/d4563-250175P1" class="btn btn-info">Más</a></p>
        </div>
    </div>
    <br>
    <br>
</body>
<footer class="bg-light text-center text-lg-start bottom">
    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
        Toda la información encontrada en este sitio web fue tomada de otros sitios. Encontrarás más información acerca de estos dando click en el botón "Más"
    </div>
</footer>
</html>