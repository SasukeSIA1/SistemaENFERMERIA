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
        
        <link rel="stylesheet" href="../Boostrap/bootstrap.min.css">
        <script src="../Boostrap/jquery.min.js"></script>
        <script src="../Boostrap/bootstrap.min.js"></script>
        

                <style>
                    .Padre
                    {
                        padding-left: 15%;      
                        
                    }
                    .ui-field-contain{
                        padding-top: 15%;
                    }
                    
                    <!-- tabla-->
                    #UsuariosExt {                
                        width: 100%;
                    }

                    #UsuariosExt td, #UsuariosExt th {
                        border: 1px solid #ddd;
                        padding: 8px;
                    }


                    #UsuariosExt tr:hover {background-color: #ddd;}

                    #UsuariosExt th {               
                        background-color: #2874A6;
                        color: white;
                        font-size: 16px;
                        text-align: center;
                    }     
            
                </style>
    </head>
    <body>
        <div class="Padre" style="padding-top: 2%;">
            <form class="ui-body ui-body-a ui-corner-all" style="width:80%;">
                <h2 style="text-align: center;">Reporte de Consultas</h2>
                <div style="padding-left: 18%;">
                    
                <span style="float: left; height: 100px; width: 80px; line-height: 50px; margin-left: 15px; display:  inline-block;">
                    <label><strong>Fecha</strong></label>
                </span>
                <span style="float: left; height: 100px; width: 200px; display:  inline-block;">
                    <input type="date"/>
                </span>
                <span style="float: left; height: 100px; width: 150px; margin-left: 15px;">
                     <button style="background:#2874A6; color: white;" class="btn btn-default" type="button">Buscar</button>
                </span>
                </div>
                    
                <table id="UsuariosExt" style="width: 100%; text-align: center;">
                    <tr>
                        <th>Hora</th>
                        <th>Nombre Commpleto</th>
                        <th>Tipo Paciente</th>
                        <th>Diagnostico</th>
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
                <div style="width: 150px; float: right">
                    <button style="background:#339900; color: white;" class="btn btn-default" type="button">imprimir</button>
                </div>
            </form>
        </div>
    </body>
</html>
