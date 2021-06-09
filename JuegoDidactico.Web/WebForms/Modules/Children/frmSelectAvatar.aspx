<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmSelectAvatar.aspx.cs" Inherits="JuegoDidactico.Web.WebForms.Modules.Children.frmSelectAvatar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="Stylesheet" href="../Scripts/css/bootstrap.css" />
    <link rel="Stylesheet" href="../Scripts/css/fontello.css" />

    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            height: 100vh;
            /*background-color: #2A3F54;*/
            background-color: #53C9E6;
        }

        .contenedor {
            width: 200px;
            border: solid 2px #000;
        }

        .content {
            -webkit-box-shadow: 0px 0px 7px -2px rgba(0,0,0,0.75);
            -moz-box-shadow: 0px 0px 7px -2px rgba(0,0,0,0.75);
            box-shadow: 0px 0px 7px -2px rgba(0,0,0,0.75);
            background-color: #fff;
            width: 50%;
            height: auto;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            box-sizing: border-box;
            padding: 100px;
            margin: auto;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container mt-2">
        <form runat="server">
            <div class="row  justify-content-center">
                <div class="col-12 d-flex justify-content-center">
                    <img class="img-fluid" src="../../../Images/portada.jpg" width="16%" />
                </div>
            </div>

            <div class="row mt-2 justify-content-center">
                <div class="col-10 rounded bg-light">
                    <div class="row justify-content-center mt-3 mb-3 ">
                        <div class="col-10 text-center">
                            <h1>Seleccione Avatar</h1>
                        </div>
                    </div>

                    <div class="row border-0 rounded justify-content-center mb-5">
                        <div class="col-2 d-flex img-fluid rounded-circle text-center mx-4 bg-info">
                            <figure class="figure">
                                <asp:ImageButton ID="btnGirl1" runat="server" CssClass="img-fluid mt-2" ImageUrl="~/Images/avatar_girl_1.png" alt="" Style="cursor: pointer;" OnClick="btnGirl1_Click" />
                            </figure>
                        </div>
                        <div class="col-2 d-flex img-fluid rounded-circle text-center mx-4 bg-info">
                            <figure class="figure">
                                <asp:ImageButton ID="btnGirl2" runat="server" CssClass="img-fluid mt-2" ImageUrl="~/Images/avatar_girl_2.png" alt="" Style="cursor: pointer;" OnClick="btnGirl2_Click" />
                            </figure>
                        </div>
                        <div class="col-2 d-flex img-fluid rounded-circle text-center mx-4 bg-info">
                            <figure class="figure">
                                <asp:ImageButton ID="btnGirl3" runat="server" CssClass="img-fluid mt-2" ImageUrl="~/Images/avatar_girl_3.png" alt="" Style="cursor: pointer;" OnClick="btnGirl3_Click" />
                            </figure>
                        </div>
                        <div class="col-2 d-flex img-fluid rounded-circle text-center mx-4 bg-info">
                            <figure class="figure">
                                <asp:ImageButton ID="btnGirl4" runat="server" CssClass="img-fluid mt-2" ImageUrl="~/Images/avatar_girl_4.png" alt="" Style="cursor: pointer;" OnClick="btnGirl4_Click" />
                            </figure>
                        </div>
                    </div>

                    <div class="row border-0 rounded justify-content-center mb-4">
                        <div class="col-2 d-flex img-fluid rounded-circle text-center mx-4 bg-info">
                            <figure class="figure">
                                <asp:ImageButton ID="btnChild1" runat="server" CssClass="img-fluid mt-2" ImageUrl="~/Images/avatar_child_1.png" alt="" Style="cursor: pointer;" OnClick="btnChild1_Click" />
                            </figure>
                        </div>
                        <div class="col-2 d-flex img-fluid rounded-circle text-center mx-4 bg-info">
                            <figure class="figure">
                                <asp:ImageButton ID="btnChild2" runat="server" CssClass="img-fluid mt-2" ImageUrl="~/Images/avatar_child_2.png" alt="" Style="cursor: pointer;" OnClick="btnChild2_Click" />
                            </figure>
                        </div>
                        <div class="col-2 d-flex img-fluid rounded-circle text-center mx-4 bg-info">
                            <figure class="figure">
                                <asp:ImageButton ID="btnChild3" runat="server" CssClass="img-fluid mt-2" ImageUrl="~/Images/avatar_child_3.png" alt="" Style="cursor: pointer;" OnClick="btnChild3_Click" />
                            </figure>
                        </div>
                        <div class="col-2 d-flex img-fluid rounded-circle text-center mx-4 bg-info">
                            <figure class="figure">
                                <asp:ImageButton ID="btnChild4" runat="server" CssClass="img-fluid mt-2" ImageUrl="~/Images/avatar_child_4.png" alt="" Style="cursor: pointer;" OnClick="btnChild4_Click" />
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
