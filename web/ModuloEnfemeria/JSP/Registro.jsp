<%-- 
    Document   : Registro
    Created on : 26/11/2018, 09:53:49 AM
    Author     : SasukeSIA1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%
    //pala fecha
/*Date date = new Date();
DateFormat hourdateFormat = new SimpleDateFormat("HH:mm:ss dd/MM/yyyy");
String fecha = hourdateFormat.format(date);*/
    //Datos Del Paciente
String nombre=request.getParameter("Nombre");
String edad = request.getParameter("Edad");
String tipo=request.getParameter("Tipo");

    //Datos vitales
String peso=request.getParameter("Peso");
String presion=request.getParameter("Presion");
String temp=request.getParameter("Temp");

    //Datos del Medicamnto
String motivo=request.getParameter("Motivo");
String medicamento=request.getParameter("NombreM");
String dosis=request.getParameter("Dosis");
String observacion=request.getParameter("comment");

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/itson",
"root","root"); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into registros_consultas values(now(),'150011','"+nombre+"','"+edad+"','"+tipo+"'"
        + ",'"+peso+"','"+presion+"','"+temp+"','"+motivo+"','"+medicamento+"','"+dosis+"','"+observacion+"')");


/*try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/itson", "root", "root");

int i=st.executeUpdate("insert into registro_consultas values(now(),'150011','"+nombre+"','"+edad+"','"+tipo+"'"
        + ",'"+peso+"','"+presion+"','"+temp+"','"+motivo+"','"+medicamento+"','"+dosis+"','"+observacion+"')");

out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}*/
%>