

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (request.getParameter("apellido")!=null){
         out.print(((String)request.getParameter("apellido")).toUpperCase());
    }
%>

