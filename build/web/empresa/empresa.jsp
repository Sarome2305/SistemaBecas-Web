<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Empresas</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url(https://images.pexels.com/photos/8199562/pexels-photo-8199562.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
        }

        .container {
            padding-top: 20px;
        }

        .card {
            margin-bottom: 20px;
            width: 300px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .card-img-top {
            max-height: 150px;
            object-fit: cover;
        }

        .card-body {
            padding: 20px;
        }

        .card-title {
            font-size: 20px;
            margin-bottom: 10px;
        }

        .card-text {
            font-size: 14px;
            margin-bottom: 15px;
        }

        .card-link {
            font-size: 14px;
            color: #fff;
            background-color: #007bff;
            border-color: #007bff;
            padding: 8px 12px;
            border-radius: 4px;
            text-decoration: none;
        }

        .card-link:hover {
            background-color: #0069d9;
            border-color: #0062cc;
        }

        .btn-regresar {
            position: absolute;
            bottom: 20px;
            left: 50%;
            transform: translateX(-50%);
            font-size: 16px;
            color: #fff;
            background-color: #333;
            border-color: #333;
            padding: 8px 12px;
            border-radius: 4px;
            text-decoration: none;
        }

        .btn-regresar:hover {
            background-color: #555;
            border-color: #555;
        }
    </style>
</head>
<body>
    <div class="container">

        <div class="row">
            <div class="col-md-6 col-lg-4">
                <div class="card">
                    <img src="https://play-lh.googleusercontent.com/XRCu-SyFrrG2mKj1zF8ohJ_pniwGJcDOsrMWgHpppWvyxGIk98SGz3KGgVFcdQ4WrQ" alt="Logo de la empresa 1" class="card-img-top">
                    <div class="card-body">
                        <h2 class="card-title">COCA-COLA</h2>
                        <p class="card-text">Nuestro fin es ayudar a toda la poblacion estudiantil que deseen romper sus barreras y deseen salir adelante.</p>
                        <a href="/beca/lista_de_becas.jsp" class="card-link">Ver becas</a>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-4">
                <div class="card">
                    <img src="https://www.elempleo.com/co/sitio-empresarial/CompanySites/claro-colombia/resources/images/logo-social.png" alt="Logo de la empresa 2" class="card-img-top">
                    <div class="card-body">
                        <h2 class="card-title">claro-colombia</h2>
                        <p class="card-text">Claro es una empresa de telecomunicaciones que busca brindar ayuda a la comunidad, brindando becas a personas que en realidad tengan ganas de superarse.</p>
                        <a href="/beca/lista_de_becas.jsp" class="card-link">Ver becas</a>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-4">
                <div class="card">
                    <img src="https://h2businessnews.com/wp-content/uploads/2022/05/Ecopetrol-020522-a-1.jpg" alt="Logo de la empresa 3" class="card-img-top">
                    <div class="card-body">
                        <h2 class="card-title">ECOPETROL</h2>
                        <p class="card-text">La empresa otorga un beneficio para financiar estudios de preescolar, primaria, básica secundaria y media, carreras intermedias, educación a distancia (implica carreras virtuales), universitarias o análogas incluyendo el nivel introductorio cuando sea parte del pensum, en establecimientos aprobados por el Ministerio de Educación Nacional, hasta la terminación de estudios de cada beneficiario.</p>
                        <a href="/beca/lista_de_becas.jsp" class="card-link">Ver becas</a>
                    </div>
                </div>
            </div>

            <!-- Otras empresas... -->
        </div>
    </div>
    <a href="../admin.jsp" class="btn btn-regresar">Regresar</a>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
