<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Selección de perfil</title>
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
            font-size: 30px;
            border: none;
            border-radius: 10px;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
        }

        .btn-primary {
            font-size: 24px;
            background-color: #007bff;
            border-color: #007bff;
            transition: background-color 0.3s;
            margin: 10px;
            padding: 10px 30px;
            border-radius: 30px;
            color: #fff;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }

        .return-link {
            color: #fff;
            margin-top: 20px;
            font-size: 18px;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="card-body text-center">
                <h1 class="card-title">Bienvenido</h1>
                <p>Por favor, seleccione su perfil:</p>
                <div class="btn-group">
                    <a href="../LoginAdmin.jsp" class="btn btn-outline-dark btn-lg">Administrador</a>
                </div>
                <div class="btn-group">
                    <a href="../RegistroEstu.jsp" class="btn btn-outline-dark btn-lg">Estudiante</a>
                </div>
            </div>
        </div>
        <a href="../index.jsp" class="return-link btn btn-outline-dark btn-lg">Regresar al inicio</a>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
