<%-- 
    Document   : aprobado
    Created on : 11 abr 2023, 20:24:56
    Author     : camil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP Page</title>
        <link href="aprobado.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
    </head>
    <body>
        <table>
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Edad</th>
                    <th>Aprobado</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>John</td>
                    <td>Doe</td>
                    <td>25</td>
                    <td class="aprobado">Sí</td>
                </tr>
                <tr>
                    <td>Jane</td>
                    <td>Smith</td>
                    <td>30</td>
                    <td class="reprobado">No</td>
                </tr>
                <tr>
                    <td>Bob</td>
                    <td>Johnson</td>
                    <td>22</td>
                    <td class="aprobado">Sí</td>
                </tr>
            </tbody>
        </table>

    </body>

</html>
