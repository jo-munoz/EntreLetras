<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Children.Master" AutoEventWireup="true" CodeBehind="frmMathLevel5.aspx.cs" Inherits="JuegoDidactico.Web.WebForms.Modules.Children.Math.Level5.frmMathLevel5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="row">
            Matemáticas
        </div>
        <div class="row">
            Nivel 5
        </div>
        <div class="row justify-content-center">
            <h1>APLICACIÓN DE COMPETENCIAS</h1>
        </div>
        <div class="row">
            <h6>Resuelve los siguientes problemas:</h6>
        </div>
        <div class="row border-0 rounded justify-content-center mb-4">
            <div class="col-10 rounded text-center bg-white" style="border: solid 1px gray">
                <div class="col-12 mt-2 mb-4">
                    <p>El profesor organizó una salida cultural con el grupo de compañeros de mi curso para conocer el museo de la ciudad. Vamos a colaborarle en la organizacion de las cuentas, respondiendo a los siguientes datos:</p>
                </div>
                <div class="row d-flex justify-content-center mb-2">
                    <div class="col-12 mt-2 mx-2">
                        <div class="col-12 mb-2">
                            Que la boleta de ingreso al museo y el refrigerio tuvieron el mismo valor y que fue el doble de lo que cancelamos por el transporte
                        </div>
                        <div class="col-12 mb-2">
                            1.  El valor del transporte por estudiantes fue:
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-2 text-left">
                                <asp:RadioButton ID="rbtn1_1" runat="server" GroupName="P1" Text="3.000" />
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-2 text-left">
                                <asp:RadioButton ID="rbtn1_2" runat="server" GroupName="P1" Text="2.200" />
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-2 text-left">
                                <asp:RadioButton ID="rbtn1_3" runat="server" GroupName="P1" Text="2.500" />
                            </div>
                        </div>
                    </div>
                    <div class="col-12 mt-2 mx-2">
                        <div class="col-12 mb-4">
                            2. El valor de la entrada al museo por estudiantes fue: 
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-2 text-left">
                                <asp:RadioButton ID="rbtn2_1" runat="server" GroupName="P2" Text="1.250" />
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-2 text-left">
                                <asp:RadioButton ID="rbtn2_2" runat="server" GroupName="P2" Text="1.000" />
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-2 text-left">
                                <asp:RadioButton ID="rbtn2_3" runat="server" GroupName="P2" Text="1.500" />
                            </div>
                        </div>
                    </div>
                    <div class="col-12 mt-2 mx-2">
                        <div class="col-12 mb-4">
                            3. El valor del refrigerio por estudiantes fue:
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-2 text-left">
                                <asp:RadioButton ID="rbtn3_1" runat="server" GroupName="P3" Text="1.000" />
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-2 text-left">
                                <asp:RadioButton ID="rbtn3_2" runat="server" GroupName="P3" Text="1.250" />
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-2 text-left">
                                <asp:RadioButton ID="rbtn3_3" runat="server" GroupName="P3" Text="2.100" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-3 mb-3">
            <div class="col d-flex justify-content-center">
                <asp:Button ID="btnLevel5" runat="server" class="btn btn-primary btn-block" Text="Siguiente" Width="50%" OnClick="btnLevel5_Click" />
            </div>
        </div>
    </form>
</asp:Content>
