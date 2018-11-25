<%-- 
    Document   : ejemploPost
    Created on : 25/11/2018, 02:48:22 PM
    Author     : el fidel
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> <head> <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        
  <script src="../jquery1.4/demos/js/jquery.js" type="text/javascript"></script>      
  <script src="../jquery1.4/demos/js/jquery.mobile-1.4.5.min.js" type="text/javascript"></script>
   <script >
     $(document).ready(function(){
       <%if (request.getParameter("user") != null){
         String nick = "\""+request.getParameter("user").toString()+"\"";%>
         $("span#nombre").text("Hola "+<%=nick%>);//Comunicación JSP - jQuery
       <%}else{%>
         $("span#nombre").text("Hola Invitado");
       <%}%>

       $("#send").click(function(){
         var apellido = $("#apellido").val();
         $.ajax({ //Comunicación jQuery hacia JSP
           type: "POST",
           url: "resultado.jsp",
           data: "apellido="+apellido,
           success: function(msg){
               $("span#ap").text(msg);
           },
           error: function(xml,msg){
               $("span#ap").text(" Error");
           }
        });                                            
     });
  });
 </script>
 <title>Pagina de Indice</title>
</head> <body>
  <p> <span id="nombre"></span><span id="ap"></span></p>
  <div> <label>Apellido: </label> <input type="text" id="apellido" name="apellido" maxlength="10"/>
    <input id="send"type="button" value="Enviar"/>
  </div> </body> </html> 