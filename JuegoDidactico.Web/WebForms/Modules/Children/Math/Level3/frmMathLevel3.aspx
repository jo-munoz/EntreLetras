<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Children.Master" AutoEventWireup="true" CodeBehind="frmMathLevel3.aspx.cs" Inherits="JuegoDidactico.Web.WebForms.Modules.Children.Math.Level3.frmMathLevel3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        body {
            background-color: #2DE184;
        }
    </style>    
    <form runat="server">
        <div class="row">
            Matemáticas
        </div>
        <div class="row">
            Nivel 3
        </div>
        <div class="row">
            <h6>Resuelve los siguientes problemas:</h6>
        </div>
        <div class="row border-0 rounded justify-content-center mb-4">
            <div class="col-10 rounded text-center bg-white" style="border: solid 1px gray">
                <div class="col-12 mt-2">
                    <p>Pepito tiene 5 perritos, 4 machos y una hembra. Su tia le regaló 2 perritos mas. Despues pepito le regaló 1 perro de los que le regaló su tia a su hermana y otro a su amiga.</p>
                </div>
                <div class="row d-flex justify-content-center mb-2">
                    <div class="col-5 mx-2">
                        <div class="col-12 mb-2">
                            1. ¿Cuántos perros le quedan a pepito?
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-8 text-left">
                                <asp:RadioButton ID="rbtn1_1" runat="server" GroupName="P1" Text="3 perritos" />
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-8 text-left">
                                <asp:RadioButton ID="rbtn1_2" runat="server" GroupName="P1" Text="4 perritos" />
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-8 text-left">
                                <asp:RadioButton ID="rbtn1_3" runat="server" GroupName="P1" Text="5 perritos" />
                            </div>
                        </div>
                    </div>
                    <div class="col-5 mx-2">
                        <div class="col-12 mb-2">
                            2. ¿Qué operaciones utilizaste?
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-6 text-left">
                                <asp:RadioButton ID="rbtn2_1" runat="server" GroupName="P2" Text="Suma" />
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-6 text-left ">
                                <asp:RadioButton ID="rbtn2_2" runat="server" GroupName="P2" Text="Suma y resta" />
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-6 text-left">
                                <asp:RadioButton ID="rbtn2_3" runat="server" GroupName="P2" Text="Suma y multiplicacion" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-3 mb-3">
            <div class="col d-flex justify-content-center">
                <asp:Button ID="btnLevel3" runat="server" class="btn btn-primary btn-block" Text="Siguiente" Width="50%" OnClick="btnLevel3_Click" />
            </div>
        </div>
    </form>
</asp:Content>
