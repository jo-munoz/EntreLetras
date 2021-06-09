<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Children.Master" AutoEventWireup="true" CodeBehind="frmSpanishLevel2Question2.aspx.cs" Inherits="JuegoDidactico.Web.WebForms.Modules.Children.Spanish.frmSpanishLevel2Question2" %>

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
            Español
        </div>
        <div class="row">
            Nivel 2 Actividad 2
        </div>
        <div class="row">
            <div class="col text-center">
                <h1>Lee el siguiente texto</h1>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <p>Las aguas de los ríos se encuentran cada vez más contaminadas debido a que reciben desechos industriales, basuras y una gran cantidad de detergentes y otros tipos de líquidos nocivos.</p>
                <p>La contaminación de las aguas provoca diversos problemas, como la muerte de plantas y animales que habitan en los ríos, la disminución de la pesca y el peligro de intoxicación o muerte de las personas por el consume de agua contaminada.</p>
                <p>Aunque estos problemas requieren soluciones urgentes, las que están en nuestros manos son muy sencillas, solo basta evitar el uso de detergente y no arrojar a las alcantarillas desperdicios ni basuras. </p>
            </div>
        </div>
        <div class="row mb-2">
            <h6>Responde de acuerdo al texto:
            </h6>
        </div>
        <div class="row d-flex justify-content-center text-center">
            <div class="col-5 rounded mx-3 bg-white" style="border: solid 1px gray">
                <div class="col-12 mt-2">
                    <h6>1. ¿De qué trata el texto?</h6>
                </div>
                <div class="col text-left">
                    <asp:RadioButton ID="rbtn1_1" runat="server" GroupName="P2_1" Text="De la muerte animales y las plantas de los ríos." />
                </div>
                <div class="col text-left">
                    <asp:RadioButton ID="rbtn1_2" runat="server" GroupName="P2_1" Text="De la contaminación de los ríos." />
                </div>
                <div class="col text-left">
                    <asp:RadioButton ID="rbtn1_3" runat="server" GroupName="P2_1" Text="Del uso de los detergentes en los hogares." />
                </div>
            </div>
            <div class="col-5 rounded mx-3 bg-white" style="border:solid 1px gray">
                <div class="col-12 mt-2 mb-4">
                    <h6>2. ¿Cuál es el título que se ajusta mejor al texto?</h6>
                </div>
                <div class="col text-left">
                    <asp:RadioButton ID="rbtn2_1" runat="server" GroupName="P2_2" Text="La contaminación del agua." />
                </div>
                <div class="col text-left">
                    <asp:RadioButton ID="rbtn2_2" runat="server" GroupName="P2_2" Text="Los desechos industriales y las basuras." />
                </div>
                <div class="col text-left">
                    <asp:RadioButton ID="rbtn2_3" runat="server" GroupName="P2_2" Text="Por qué disminuye la pesca en los ríos." />                    
                </div>
            </div>
        </div>
        <div class="row mt-3 mb-3">
            <div class="col d-flex justify-content-center">
                <asp:Button ID="btnLevel2Question2" runat="server" class="btn btn-primary btn-block" Text="Siguiente" Width="50%" OnClick="btnLevel2Question2_Click" />
            </div>
        </div>
    </form>
</asp:Content>
