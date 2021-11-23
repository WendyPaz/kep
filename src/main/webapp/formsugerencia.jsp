

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css" integrity="sha384-wESLQ85D6gbsF459vf1CiZ2+rr+CsxRY0RpiF1tLlQpDnAgg6rwdsUF1+Ics2bni" crossorigin="anonymous">
        <link href="estilo.css" rel="stylesheet" type="text/css">
        <title>Sugerir municipio</title>
    </head>
    <body class="fondo">
        <div class ="container mt-5">
            <div class="row">
                <div class="col">
                    <h3 class="display-5 text-center">Sugerir un Municipio</h3>

                    <br> 
                    <p class="text-center"><img class="center" src="logob.png" width="300px" height="280px" ></p>
                    <br>
                    <form action="sugerencia.jsp" method="post">
                        <label for="nombre" class="form-label">Nombre Municipio</label>
                        <input type="text" id="nombre" class="form-control" name="nombre">
                        <p class="lead">El municipio debe pertenecer al departamento de Antioquia.</p>
                        <br>
                        <button type="submit" name="enviar" class="btn btn-primary">Guardar Municipio</button>
                    </form>
                    <br>
                    <br>
                    <p class="text-center"> <a class="btn-default btn-sm bg-primary h6 text-black" href="index.jsp"> Cancelar </a></p>
                </div>  
            </div>  
        </div>  
    </div>  
</body>
</html>
