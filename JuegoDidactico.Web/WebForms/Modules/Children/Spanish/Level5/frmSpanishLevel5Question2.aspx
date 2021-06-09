<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Children.Master" AutoEventWireup="true" CodeBehind="frmSpanishLevel5Question2.aspx.cs" Inherits="JuegoDidactico.Web.WebForms.Modules.Children.Spanish.Level5.frmSpanishLevel5Question2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="row">
            Español
        </div>
        <div class="row">
            Nivel 5 Actividad 2
        </div>
        <div class="row">
            <div class="col text-center">
                <h1>María y Sara</h1>
            </div>
        </div>
        <div class="row d-flex justify-content-center">
            <p>En verano María y Sara se reúnen en el río todas las mañanas. Las dos amigas nadan, corren, juegan y se ríen mucho. ¡Lo pasan de maravilla!</p>
        </div>
        <div class="row mb-2">
            <h6>Seleccione la respuesta correcta.</h6>
        </div>
        <div class="row d-flex justify-content-center text-center">
            <div class="col-8 rounded mb-4 bg-white" style="border: solid 1px gray; height: auto">
                <div class="col-12 mt-2 mb-2">
                    1. María y Sara son:
                </div>
                <div class="row d-flex justify-content-center">
                    <div class="col-4">
                        <div class="col-12 text-left">
                            <asp:RadioButton ID="rbtn1_1" runat="server" GroupName="P1" Text="Una madre y una hija." />
                        </div>
                        <div class="col-12 text-left">
                            <asp:RadioButton ID="rbtn1_2" runat="server" GroupName="P1" Text="Dos niñas que son amigas." />
                        </div>
                        <div class="col-12 text-left mb-2">
                            <asp:RadioButton ID="rbtn1_3" runat="server" GroupName="P1" Text="Dos señoras que viven cerca." />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-8 rounded bg-white" style="border: solid 1px gray">
                <div class="col-12 mt-2 mb-2">
                    2. ¿Cómo pasan el tiempo? 
                </div>
                <div class="row d-flex justify-content-center">
                    <div class="col-4">
                        <div class="col-12 text-left">
                            <asp:RadioButton ID="rbtn2_1" runat="server" GroupName="P2" Text="Muy aburridas." />
                        </div>
                        <div class="col-12 text-left">
                            <asp:RadioButton ID="rbtn2_2" runat="server" GroupName="P2" Text="Muy divertidas." />
                        </div>
                        <div class="col-12 text-left mb-2">
                            <asp:RadioButton ID="rbtn2_3" runat="server" GroupName="P2" Text="Normal." />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-3 mb-3">
            <div class="col d-flex justify-content-center">
                <asp:Button ID="btnLevel5Question2" runat="server" class="btn btn-primary btn-block" Text="Siguiente" Width="50%" OnClick="btnLevel5Question2_Click" />
            </div>
        </div>
    </form>
</asp:Content>
