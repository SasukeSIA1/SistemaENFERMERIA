<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
</head>
        
    </head>
    <body>       
        <%
        String Usuario = request.getParameter("user");
        String Contraseña = request.getParameter("pass");
        
        /*Class.forName("com.mysql.jdbc.Driver"); 
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/itson","root","root"); 
        Statement stmt = con.createStatement();        
        ResultSet rs =stmt.executeQuery("select * from usuarios where usuario='"+Usuario+"';"); */


        if(Usuario.equals("ITSON") && Contraseña.equals("123")){

        HttpSession sesion = request.getSession(true);
        sesion.setAttribute("ITSON","1");

        %>           
        
        <script >
         location.href="../menu.jsp";
        </script>
        
        <% //codigo para la BD
        }else if(Usuario.equals("ITSONF") && Contraseña.equals("123")){
                HttpSession sesion = request.getSession(true);
                sesion.setAttribute("ITSONF","1");
                
            /*else if(rs.next()){
            if(rs.getString(2).equals(Contraseña)){
            HttpSession sesion = request.getSession(true);
            sesion.setAttribute("Enfermera","1");}*/
        %>            
        
        <script >
         location.href="../MenuEnf.jsp";
        </script>
        
        <%        
        }else{
        %>
        <script >
            alert("Datos Incorrectos!");
         location.href="../index.html";
        </script>
        <%
        }
        %>
        
    </body>
</html>
