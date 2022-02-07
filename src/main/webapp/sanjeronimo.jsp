<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css" integrity="sha384-wESLQ85D6gbsF459vf1CiZ2+rr+CsxRY0RpiF1tLlQpDnAgg6rwdsUF1+Ics2bni" crossorigin="anonymous">
        <title>San Jerónimo</title>
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





<body>
    <%
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
    %>
    <div class ="container mt-5">
        <div class="row">
            <div class="col">
                <h1 class="display-4 text-center">Bienvenido a los sitios turísticos de San Jerónimo</h1>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col" colspan="4"><h3>Sitios San Jerónimo</h3></th>
                            <th scope="col">
                                <a class="btn-default btn-sm bg-info text-black" href="crearsanje.jsp"> Agregar Lugar </a>
                            </th>
                        </tr>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Clima</th>
                            <th scope="col">Distancia</th>

                        </tr>
                    </thead>
                    <tbody>
                        <%
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://uniwfdnxah5vpg0p:ypXbmE4Z8aDo8sxyGQdT@bgfbi6seynauym9z650h-mysql.services.clever-cloud.com:3306/bgfbi6seynauym9z650h", "uniwfdnxah5vpg0p", "ypXbmE4Z8aDo8sxyGQdT");                       
                                st = con.createStatement();
                                rs = st.executeQuery("SELECT * FROM `san jeronimo`;");
                                while (rs.next()) {
                        %>
                        <tr>
                            <th scope="row"><%= rs.getString(1)%></th>
                            <td><%= rs.getString(2)%></td>
                            <td><%= rs.getString(3)%></td>
                            <td><%= rs.getString(4)%></td>

                        </tr>
                        </tr>
                        <%
                                }
                            } catch (Exception e) {
                                out.print("Error mysql " + e);
                            }
                        %>
                    </tbody>
                </table> 
<p class="leader">*Todos los lugares que aparecen en la lista, pero que no tienen acceso en los botones son sugerencias del usuario y están pendientes de revisión*</p>
            </div>
        </div> 

        <br>
        <br>
        <div class="container">
            <div class="row">
                <div class="card col-sm-3">

                    <div class="card-body">
                        <h4 class="card-title">Cerro de Río </h4>
                        <a href="cerro.jsp" class="btn btn-primary">Info</a>
                    </div>
                </div>
                <div class="card col-sm-3" >             
                    <div class="card-body">
                        <h4 class="card-title">Quebrada Guaracú</h4>
                        <a href="quebrada.jsp" class="btn btn-primary">Info</a>
                    </div>
                </div>
                <div class="card col-sm-3">
                    <div class="card-body">
                        <h4 class="card-title">Cascada del Río Aurrá</h4>
                        <a href="aurra.jsp" class="btn btn-primary">Info</a>
                    </div>
                </div>
                <div class="card col-sm-3">
                    <div class="card-body">
                        <h4 class="card-title">Caminata Llano de Ovejas</h4>
                        <a href="ovejas.jsp" class="btn btn-primary">Info</a>
                    </div>
                </div>
            </div>
        </div>      
    </div>
</body>

<footer class="bg-light text-center text-lg-start bottom">
    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
        Toda la información encontrada en este sitio web fue tomada de otros sitios. Encontrarás más información acerca de estos dando click en el botón "Más"
    </div>
</footer>
</html>
