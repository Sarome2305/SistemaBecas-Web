<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gracias por aspirar a la beca</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
            background-image: url(https://images.pexels.com/photos/8199562/pexels-photo-8199562.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
        }

        .container {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        .card {
            font-size: 24px;
            border: none;
            border-radius: 10px;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            text-align: center;
            background-color: #fff;
            animation: fade-in 1s ease-out;
        }

        @keyframes fade-in {
            0% {
                opacity: 0;
                transform: translateY(-20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .btn-primary {
            font-size: 18px;
            background-color: #007bff;
            border-color: #007bff;
            transition: background-color 0.3s;
            margin: 10px;
            padding: 10px 20px;
            border-radius: 20px;
            color: #fff;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }

        .return-link {
            color: #fff;
            margin-top: 20px;
            font-size: 16px;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card">
            <h2>¡Gracias por aspirar a la beca!</h2>
            <p>Verificaremos tus datos y nos pondremos en contacto contigo.</p>
            <a href="./Paglogueada.jsp" class="btn btn-outline-dark btn-lg">Regresar al inicio</a>
        </div>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
