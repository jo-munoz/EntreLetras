<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Children.Master" AutoEventWireup="true" CodeBehind="frmMathLevel4.aspx.cs" Inherits="JuegoDidactico.Web.WebForms.Modules.Children.Math.Level4.frmMathLevel4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        body {
            background-color: #FF9C33;
        }
    </style>      
    <form runat="server">
        <div class="row">
            Matemáticas
        </div>
        <div class="row">
            Nivel 4
        </div>
        <div class="row">
            <h6>Resuelve los siguientes problemas:</h6>
        </div>
        <div class="row border-0 rounded justify-content-center mb-4">
            <div class="col-10 rounded text-center bg-white" style="border: solid 1px gray">
                <div class="col-12 mt-2">
                    <p>1. Mercedes compró 4 paquetes de 6 gaseosas cada uno. ¿Cuántas gaseosas compró Mercedes?</p>
                </div>
                <div class="row d-flex justify-content-center">
                    <div class="col-3">
                        <div class="col text-left">
                            <asp:RadioButton ID="rbtn1_1" runat="server" GroupName="P1" Text="18" />
                        </div>
                        <div class="col text-left">
                            <asp:RadioButton ID="rbtn1_2" runat="server" GroupName="P1" Text="10" />
                        </div>
                        <div class="col text-left">
                            <asp:RadioButton ID="rbtn1_3" runat="server" GroupName="P1" Text="24" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row border-0 rounded justify-content-center mb-4">
            <div class="col-10 rounded text-center bg-white" style="border: solid 1px gray">
                <div class="col-12 mt-2 mb-4">
                    <asp:Image runat="server" CssClass="img-fluid rounded mt-2" ImageUrl="~/Images/matematicas.jpg" alt="" Width="50%" Height="50%" />
                </div>
                <div class="row d-flex justify-content-center mb-2">
                    <div class="col-12 mt-2 mx-2">
                        <div class="col-12 mb-2">
                            1. Según la imagen la opción que representa el número de juguetes es:
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-7 text-left">
                                <asp:RadioButton ID="rbtn2_1" runat="server" GroupName="P2" Text="3 patinetas, 1 pelotas, 7 carros y 5 bicicletas" />
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-7 text-left">
                                <asp:RadioButton ID="rbtn2_2" runat="server" GroupName="P2" Text="3 balones, 7 carros, 1 patineta y 5 bicicletas" />
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-7 text-left">
                                <asp:RadioButton ID="rbtn2_3" runat="server" GroupName="P2" Text="5 carros, 7 bicicletas, 1 patineta y 3 balones" />
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-7 text-left">
                                <asp:RadioButton ID="rbtn2_4" runat="server" GroupName="P2" Text="7 bicicletas, 1 patineta, 3 pelotas y 1 patineta" />
                            </div>
                        </div>
                    </div>
                    <div class="col-12 mt-2 mx-2">
                        <div class="col-12 mb-4">
                            2. Segùn la tabla de datos se puede decir que: 
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-7 text-left">
                                <asp:RadioButton ID="rbtn3_1" runat="server" GroupName="P3" Text="El juguete que màs tiene Marcos es la bicicleta" />
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-7 text-left">
                                <asp:RadioButton ID="rbtn3_2" runat="server" GroupName="P3" Text="El juguete que menos tiene es la pelota" />
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-7 text-left">
                                <asp:RadioButton ID="rbtn3_3" runat="server" GroupName="P3" Text="Los juguetes que màs tiene carros y bicicletas" />
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-7 text-left">
                                <asp:RadioButton ID="rbtn3_4" runat="server" GroupName="P3" Text="Los juguetes que màs tiene Marcos son las patinetas y las pelotas" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-3 mb-3">
            <div class="col d-flex justify-content-center">
                <asp:Button ID="btnLevel4" runat="server" class="btn btn-primary btn-block" Text="Siguiente" Width="50%" OnClick="btnLevel4_Click" />
            </div>
        </div>
    </form>
</asp:Content>
