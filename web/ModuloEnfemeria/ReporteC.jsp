<%-- 
    Document   : ReporteC
    Created on : 26/11/2018, 10:00:06 AM
    Author     : SasukeSIA1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Reporte Consultas</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link href="../jquery1.4/jquery.mobile-1.4.5.css" rel="stylesheet" type="text/css"/>
        <link href="../jquery1.4/jquery.mobile-1.4.5.min.css" rel="stylesheet" type="text/css"/>
        <script src="../jquery1.4/demos/js/jquery.js" type="text/javascript"></script>
        <script src="../jquery1.4/demos/js/jquery.mobile-1.4.5.min.js" type="text/javascript"></script>

                <style>
                    .Padre
                    {
                        padding-left: 25%;      
                        
                    }
                    .ui-field-contain{
                        padding-top: 15%;
                    }
                    
            
                </style>
    </head>
    <body>
        <div class="Padre" style="padding-top: 2%;">
            <form class="ui-body ui-body-a ui-corner-all" style="width:65%;">
                <h2 style="text-align: center;">Reporte de Consultas</h2>
                <div style="padding-left: 18%;">
                <span style="float: left; height: 100px; width: 80px; line-height: 50px; margin-left: 15px;">
                    <label><strong>Fecha</strong></label>
                </span>
                <span style="float: left; height: 100px; width: 200px;">
                    <input type="date"/>
                </span>
                <span style="float: left; height: 100px; width: 150px; margin-left: 15px;">
                    <input type="submit" value="Buscar"/>
                </span>
                </div>
                    
                <table style="width: 100%; text-align: center;">
                    <tr>
                        <th>Hora</th>
                        <th>Nombre Commpleto</th>
                        <th>Tipo Paciente</th>
                        <th>Disgnostico</th>
                        <th>Tratamiento</th>
                    </tr>
                    <tr>
                        <td>10:32</td>
                        <td>Rodrigo Leyva</td>
                        <td>Alumno</td>
                        <td>Loco</td>
                        <td>Nada</td>
                    </tr>
                    <tr>
                        <td>12:05</td>
                        <td>Jonathan Siari</td>
                        <td>Visitante</td>
                        <td>Dolor Garganta</td>
                        <td>Paleta SIMI</td>
                    </tr>
                </table>
                <br/>
                <div style="width: 150px; padding-left: 465px;">
                    <input type="submit" value="Imprimir"/>
                </div>
            </form>
        </div>
    </body>
</html>