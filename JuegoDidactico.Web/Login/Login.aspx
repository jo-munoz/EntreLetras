<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="JuegoDidactico.Web.Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <%--Idioma latino--%>
    <meta charset="utf-8" />
    <meta name="author" content="Juego Didactico" />
    <meta name="description" content="Juego Didactico para niños" />
    <meta name="keywords" content="juego, niños, aprendizaje" />
    <link rel="icon" href="../Images/libro.png" />

    <title>Entre Letras</title>

    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="Stylesheet" href="../Scripts/css/bootstrap.css" />
    <link rel="Stylesheet" href="../Scripts/css/fontello.css" />

    <%--Librerias de Alertify--%>
    <link href="../Scripts/alertify.js/themes/alertify.core.css" rel="stylesheet" type="text/css" />
    <link href="../Scripts/alertify.js/themes/alertify.default.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/alertify.js/lib/alertify.js" type="text/javascript"></script>

    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            height: 100vh;
            /*background-color:#2A3F54;*/
            /*background-color:#AED6F1;*/
            /*background-color:#E5E8E8;*/
            background-color: #53C9E6;
        }

        .div-form div {
            margin: 10px;
            border: 1px solid #808080;
            height: 40px;
            width: 250px;
            display: flex;
            flex-direction: row;
            align-items: center;
            box-sizing: border-box;
            padding: 10px;
        }

        .inputWithIcon input[type=text] {
            padding-left: 10px;
        }

        .inputWithIcon {
            position: relative;
        }

            .inputWithIcon i {
                position: absolute;
                right: 15px;
                top: -2px;
                padding: 9px 8px;
                color: #aaa;
            }

            .inputWithIcon input[type=text]:focus + i {
                color: dodgerBlue;
            }
    </style>
</head>

<body>
    <div class="container mt-4">
        <div class="row justify-content-center mb-2">
            <div class="col-12 d-flex justify-content-center mb-4">
                <img class="img-fluid" src="../Images/portada.jpg" width="16%" />
            </div>
        </div>
        <div class="row mt-2 justify-content-center mb-3">
            <div class="col-10 col-md-7 col-lg-4">
                <div class="card card-login mx-auto mt-">
                    <div class="card-header">Login</div>
                    <div class="card-body">
                        <form id="form2" runat="server">
                            <div class="form-group">
                                <div class="form-label-group">
                                    <div class="mb-1">
                                        <asp:Label ID="lblUsuario" runat="server" Text="Usuario:"></asp:Label>
                                    </div>
                                    <div class="inputWithIcon mb-3">
                                        <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" required=""></asp:TextBox>
                                        <i class="icon-user" aria-hidden="true"></i>
                                    </div>
                                    <div class="mb-1">
                                        <asp:Label ID="lblPassword" runat="server" Text="Contraseña:"></asp:Label>
                                    </div>
                                    <div class="inputWithIcon">
                                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" required=""></asp:TextBox>
                                        <i class="icon-key" aria-hidden="true"></i>
                                    </div>
                                </div>
                            </div>
                            <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" class="btn btn-primary btn-block" OnClick="btnIngresar_Click" />
                            <footer>
                                <div class="container mt-2">
                                    <div class="col-12 text-center"><small>Contacto: jomunoz.dev@gmail.com</small></div>
                                    <div class="text-center"><small>Todos los derechos reservados</small></div>                                    
                                    <div class="text-center"><small>© 2019</small></div>
                                </div>
                            </footer>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-10 col-md-7 rounded bg-white">
                <div class="col-12 text-center"><small>Toda la información e imágenes utilizadas son con fines pedagógicos y sin ánimo de lucro.</small></div>                           
            </div>
        </div>
    </div>
    <script type="text/javascript">    
    </script>
    <script src="../Scripts/js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="../Scripts/js/popper.min.js" type="text/javascript"></script>
    <script src="../Scripts/js/bootstrap.js" type="text/javascript"></script>
</body>

</html>
