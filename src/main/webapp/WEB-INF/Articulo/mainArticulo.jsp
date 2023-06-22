<%-- 
    Document   : mainArticulo
    Created on : 22 jun. 2023, 06:07:12
    Author     : Brian
--%>

<%@page import="tienda.modelo.dao.ArticuloDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="tienda.modelo.bean.Articulo"%>
<%@page import="tienda.modelo.dao.EmpleadoDAO"%>
<%@page import="tienda.modelo.bean.Empleado"%>
<%@page import="tienda.modelo.bean.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <style>
            header {
                background-color: darkkhaki;
                text-align: center;
                padding: 1rem;
                color: #fff;
                font-weight: bold;
            }

            nav {
                display: flex;
                justify-content: space-around;
                padding: 0.5rem 0;
                background-color: darkcyan;
                color: #fff;
            }

            nav a {
                text-decoration: none;
                color: #fff;
            }

            ul {
                display: flex;
                justify-content: center;
                align-items: center;
                list-style-type: none;
                padding: 0;
                margin: 0;
                background-color: #b3daff;
            }

            ul a {
                display: inline-block;
                text-decoration: none;
                color: #fff;
                padding: 0.5rem;
                background-color: #b3daff;
            }

            ul a:hover {
                background-color: #0084ff;
            }

            .table {
                text-align: center;
            }
        </style>
    </head>
    <body>
        <%
            Usuario usuario = (Usuario) request.getSession().getAttribute("owner");
            Empleado empleado = new Empleado(usuario.getIdempleado(), "", "", "", "");
            empleado = new EmpleadoDAO().read(empleado);
        %>
        <header>Administración de la tienda deporte</header>
        <nav><span><%=empleado.getNombre()%> <%=empleado.getApaterno()%></span><span><%=empleado.getCargo()%></span><span><a href="logout">Cerrar sesión</a></span></nav>
        <section>
            <ul>
                <li><a href="mainEmpleado">Sección empleados</a></li>
                <li><a href="mainArticulo">Sección articulos</a></li>
                <li><a href="#">Sección clientes</a></li>
                <li><a href="#">Sección pedidos</a></li>
            </ul>
        </section>
        
        <div class="container">
            <table class="table">
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Descripción</th>
                    <th>Precio</th>
                    <th>Foto</th>
                    <th colspan="2"><a class="btn btn-warning"href="viewCreateA">Crear</a></th>
                </tr>
                <%
                    ArrayList<Articulo> listaArticulo = new ArticuloDAO().tolist();
                    for (Articulo a : listaArticulo) {
                %>
                <tr>
                    <td><%=a.getIdarticulo()%></td>
                    <td><%=a.getNombre()%></td>
                    <td><%=a.getDescripcion()%></td>
                    <td><%=a.getPrecio()%></td>
                    <td><%=a.getFoto()%></td>
                    <td><a class="btn btn-primary" href="viewupdateA?id=<%=a.getIdarticulo()%>">Editar</a></td>
                    <td><a class="btn btn-danger" href="viewdeleteA?id=<%=a.getIdarticulo()%>">Eliminar</a></td>
                </tr>
                <%}%>
            </table>
        </div>
    </body>
</html>
