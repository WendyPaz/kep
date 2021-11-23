<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <title>Sugerencias</title>
    </head>
    <body>
        <%
        
       ListaSE lista = new ListaSE();
       Municipio mncp = new Municipio("nombre");
       
       Municipio gdta = new Municipio("Girardota");
       Municipio sbnt = new Municipio("Sabaneta");
       Municipio bbsa = new Municipio("Barbosa");
       Municipio ttbi = new Municipio("Titiribí");
      
       
       lista.agregar(gdta);
       lista.agregar(sbnt);
       lista.agregar(bbsa);
       lista.agregar(ttbi);
       
       
       String nombre = request.getParameter("nombre");
       
         Municipio nombren = new Municipio(nombre);
         
         lista.agregar(nombren);
       %>
        <header>
            <div class="fixed-top">
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                    <img src="logob.png" alt="" width="60" height="60">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="index.jsp">Home</a>
                            </li>
                             <li class="nav-item">
                    <a class="nav-link" href="medellin.jsp">Medellín</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="guatape.jsp">Guatapé</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="jardin.jsp">Jardín</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="sanjeronimo.jsp">San Jerónimo</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="sanrafael.jsp">San Rafael</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="santafe.jsp">Santa Fé</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="sugerencia.jsp">Sugerencia</a>
                </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </header>
        <br>
        <br>
        <br>
        <br>
        <br>
        <div class="container mt-2">
        <h3 class="display-4 text-center">Haz una Sugerencia!</h3>
        <p class="text-center"> <img src="sugerencia.png" alt="" width="250" height="250"></p>
        <p class="text-center lead">Aquí podrás sugerirnos que municipios de Antioquia te gustaría encontrar en Kep</p>
        <br>
        <br>
        <hr>
        <br>
        <p class="text-center display-4">Municipios que los usuarios han sugerido.</p>
        <br>
        <br>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col" class="text-center">Municipios Sugeridos</th>
                </tr>
            </thead>
            <tbody>
                <%
                for (int i = 0; i < lista.tamanio(); i++) {
                        
                    
                %>
                <tr>
                    <td><%=lista.obtener(i).getNombre()%></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        
        <br>
        <p class="text-center"><a href="formsugerencia.jsp" class="btn btn-primary"> Sugiere un municipio. </a></p>
        <br>
        <p class="lead">Todos los municipios que el usuario sugiera estarán en revisión.</p>
        <br>
        <br>
          </div>
        
        <footer class="bg-light text-center text-lg-start bottom">
  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    Para todo el equipo de Kep, tu opinión es muy importante!
  </div>
</footer>
        
    </div>

</body>
</html>