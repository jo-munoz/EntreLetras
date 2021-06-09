<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Children.Master" AutoEventWireup="true" CodeBehind="frmMathLevel2.aspx.cs" Inherits="JuegoDidactico.Web.WebForms.Modules.Children.Math.Level2.frmMathLevel2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        body {
            background-color: #A533FF;
        }
    </style>
    <form runat="server">
        <div class="row">
            Matemáticas
        </div>
        <div class="row">
            Nivel 2
        </div>
        <div class="row justify-content-center">
            <h1>PROBLEMAS DE SUSTRACCION</h1>
        </div>
        <div class="row">
            <h6>Resuelve los siguientes problemas:</h6>
        </div>
        <div class="row d-flex justify-content-center text-center">
            <div class="col-5 rounded mx-3 bg-white" style="border: solid 1px gray">
                <div class="col-12 mt-2">
                    <h6>1. Antonio tenía 425 metros de tela y vendió 167 metros.</h6>
                </div>
                <div class="col mb-2">
                    ¿Cuántos metros de tela le quedan?
                </div>
                <div class="row d-flex justify-content-center">
                    <div class="col-5 d-flex justify-content-end align-items-center">
                        <img src="../../../../../Images/subtraction.png" alt="" width="50px" height="50px" />
                    </div>
                    <div class="col-6">
                        <div class="col-12 mb-2 d-flex justify-content-between">
                            <asp:TextBox ID="txt1_1" runat="server" Text="" CssClass="col-6 form-control text-center" required="" onkeypress="javascript:return solonumeros(event)"></asp:TextBox>
                        </div>
                        <div class="col-12 d-flex justify-content-between mb-2">
                            <asp:TextBox ID="txt1_2" runat="server" Text="" CssClass="col-6 form-control text-center" required="" onkeypress="javascript:return solonumeros(event)"></asp:TextBox>
                        </div>
                        <div class="col-7">
                            <hr />
                        </div>
                    </div>
                </div>
                <div class="row d-flex justify-content-center">
                    <div class="col-5 d-flex justify-content-end align-items-center">
                        <div class="d-flex align-items-end">Total de tela</div>
                    </div>
                    <div class="col-6">
                        <div class="col-12 mb-2 d-flex justify-content-between">
                            <asp:TextBox ID="txt1_Resul" runat="server" Text="" CssClass="col-6 form-control text-center" required="" onkeypress="javascript:return solonumeros(event)"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-5 rounded mx-3 bg-white" style="border: solid 1px gray">
                <div class="col-12 mt-2">
                    <h6>2. Los alumnus de primero y Segundo grado de una escuela sembraron 146 arboles. Los de primero sembraron 50</h6>
                </div>
                <div class="col mb-2">
                    ¿Cuántos árboles sembraron los de Segundo?
                </div>
                <div class="row d-flex justify-content-center">
                    <div class="col-5 d-flex justify-content-end align-items-center">
                        <img src="../../../../../Images/subtraction.png" alt="" width="50px" height="50px" />
                    </div>
                    <div class="col-6">
                        <div class="col-12 mb-2 d-flex justify-content-between">
                            <asp:TextBox ID="txt2_1" runat="server" Text="" CssClass="col-6 form-control text-center" required="" onkeypress="javascript:return solonumeros(event)"></asp:TextBox>
                        </div>
                        <div class="col-12 d-flex justify-content-between mb-2">
                            <asp:TextBox ID="txt2_2" runat="server" Text="" CssClass="col-6 form-control text-center" required="" onkeypress="javascript:return solonumeros(event)"></asp:TextBox>
                        </div>
                        <div class="col-7">
                            <hr />
                        </div>
                    </div>
                </div>
                <div class="row d-flex justify-content-center">
                    <div class="col-5 d-flex justify-content-end align-items-center">
                        <div class="d-flex align-items-end">Total de Arboles</div>
                    </div>
                    <div class="col-6">
                        <div class="col-12 mb-2 d-flex justify-content-between">
                            <asp:TextBox ID="txt2_Resul" runat="server" Text="" CssClass="col-6 form-control text-center" required="" onkeypress="javascript:return solonumeros(event)"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-3 mb-3">
            <div class="col d-flex justify-content-center">
                <asp:Button ID="btnLevel2" runat="server" class="btn btn-primary btn-block" Text="Siguiente" Width="50%" OnClick="btnLevel2_Click" />
            </div>
        </div>
    </form>
    <script type="text/javascript">
        function solonumeros(e) {
            var key;
            if (window.event) {
                key = e.keyCode;
            }
            else if (e.which) {
                key = e.which;
            }
            if (key < 48 || key > 57) {
                return false
            }
            return true;
        }
    </script>
</asp:Content>
