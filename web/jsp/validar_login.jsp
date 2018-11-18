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

        if(Usuario.equals("ITSON") && Contraseña.equals("123")){

        HttpSession sesion = request.getSession(true);
        sesion.setAttribute("ITSON","1");

        %>           
        
        <script >
         location.href="../menu.jsp";
        </script>
        
        <%
        }else if(Usuario.equals("ITSONF") && Contraseña.equals("123")){
        HttpSession sesion = request.getSession(true);
        sesion.setAttribute("Enfermera","1");
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
