<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css" integrity="sha384-wESLQ85D6gbsF459vf1CiZ2+rr+CsxRY0RpiF1tLlQpDnAgg6rwdsUF1+Ics2bni" crossorigin="anonymous">
        <link href="estilo.css" rel="stylesheet" type="text/css">
        <title>Crear Guatapé</title>
    </head>
    <body class="fondo">
        <div class ="container mt-5">
            <div class="row">
                <div class="col">
                    <h3 class="display-5 text-center">Agregar lugar a Guatapé</h3>
                    <form action="creargua.jsp" method="post">
                        <div class="mb-3">
                            <label for="nombre" class="form-label">Nombre</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre" required="required">
                        </div>
                        <div class="mb-3">
                            <label for="clima" class="form-label">Clima</label>
                            <input type="text" class="form-control" id="clima" name="clima" placeholder="Clima" required="required">
                        </div>
                        <div class="mb-3">
                            <label for="distancia" class="form-label">Distancia</label>
                            <input type="text" class="form-control" id="distancia" name="distancia" placeholder="Distancia" required="required">
                        </div>
                        <button type="submit" name="enviar" class="btn btn-primary">Guardar Lugar</button>
                        
                    </form>
                    <br>
                    <br>
                    <p class="text-center"> <a class="btn-default btn-sm bg-primary h6 text-black" href="index.jsp"> Cancelar </a></p>
                </div>         
            </div>
        </div>
        <%
            if(request.getParameter("enviar")!=null){
                String nombre=request.getParameter("nombre");
                String clima=request.getParameter("clima");
                String distancia=request.getParameter("distancia");
                
                try {
                     Connection con =null;
                     Statement st = null;
                     
                     Class.forName("com.mysql.jdbc.Driver");
                     con = DriverManager.getConnection("jdbc:mysql://localhost/kep?user=root");
                     st = con.createStatement();
                     st.executeUpdate("insert into guatape (nombre,clima,distancia) values('"+nombre+"','"+clima+"','"+distancia+"');");
                     request.getRequestDispatcher("guatape.jsp").forward(request, response);
                    } catch (Exception e) {
                    out.print(e);
                    }
            }
        %>
    </body>
</html>
