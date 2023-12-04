<%@page import = "java.util.ArrayList"%>
<%@page import = "com.emergentes.modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <h1>Angel Smiht Quenallata Challco</h1>
        <%
            if (session.getAttribute("listaper") == null){
            ArrayList<Persona> lista = new ArrayList<Persona>();
            lista.add(new Persona(1, "Angel Smiht","6796597","angel.nsqc@gmail.com"));
            lista.add(new Persona(2, "Manuel Castro","252525","ManuelCas@gmail.com"));
            lista.add(new Persona(3, "Cristian Pinto","7878222","CristianCool@hotmail.com"));
            lista.add(new Persona(4, "Pollet Iris","77561445","pollet@hotmail.com"));
            lista.add(new Persona(5, "Rosmery Luz","61169900","Rosmery@gmail.com"));
            
            session.setAttribute("listaper", lista);
            }
        %>
        <h1>Ejemplos de JSTL Core</h1>
        <ul>
            <li><a href="jstl_if.jsp">Ejemplo del if</a></li>
            <li><a href="jstl_choose.jsp">Probando el choose</a></li>
            <li><a href="jstl_foreach.jsp">Recorriendo la coleccion con forEach</a></li>
        </ul>
    </body>
</html>
