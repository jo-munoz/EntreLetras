<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Children.Master" AutoEventWireup="true" CodeBehind="frmSpanishLevel1Question1.aspx.cs" Inherits="JuegoDidactico.Web.WebForms.frmSpanishLevel1Question1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        body {
            background-color: #F43D16;
        }
    </style>    
    <form runat="server">
        <div class="row">
            Español
        </div>
        <div class="row">
            Nivel 1 Actividad 1
        </div>
        <div class="row">
            <h1>¿Quién le da un beso al sapo?</h1>
        </div>
        <div class="row">
            <h5>Lee para comprender:</h5>
            <p>
                Había una vez un pequeño sapo que vivía en una charca. El sapo estaba contento y era feliz, pues tenía todo lo que podía necesitar; una cama en un viejo neumático y mucha agua limpia. “Un sapo no necesita nada más”, pensaba, hasta que un día..., vio a dos ardillas que se daban un beso, en un agujero de un árbol. “¡Qué bonito!”, pensó el sapo, y se sintió de pronto muy solo. – ¡Yo también quiero que alguien me dé un beso!– exclamó, y empezó a buscar enseguida a ese alguien.
            </p>
        </div>
        <div class="row mb-2">
            <h6>Responde de acuerdo al texto:
            </h6>
        </div>
        <div class="row d-flex justify-content-center text-center">
            <div class="col-5 rounded mx-3 bg-white" style="border:solid 1px gray">
                <div class="col-12 mt-2">
                    <h6>1. ¿En qué lugar vivía el sapo?</h6>
                </div>
                <div class="col text-left">
                    <asp:RadioButton ID="rbtn1_1" runat="server" GroupName="P1_1" Text="En el agujero de un árbol" />
                </div>
                <div class="col text-left">
                    <asp:RadioButton ID="rbtn1_2" runat="server" GroupName="P1_1" Text="En una charca" />
                </div>
                <div class="col text-left">
                    <asp:RadioButton ID="rbtn1_3" runat="server" GroupName="P1_1" Text="En un árbol" />                    
                </div>
                <div class="col text-left mb-2">
                    <asp:RadioButton ID="rbtn1_4" runat="server" GroupName="P1_1" Text="En un lago" />                    
                </div>
            </div>
            <div class="col-5 rounded mx-3 bg-white" style="border:solid 1px gray">
                <div class="col-12 mt-2 mb-4">
                    <h6>2. ¿Cómo se sintió el sapo cuando vio a las ardillas?</h6>
                </div>
                <div class="col text-left">
                    <asp:RadioButton ID="rbtn2_1" runat="server" GroupName="P1_2" Text="Muy solo" />
                </div>
                <div class="col text-left">
                    <asp:RadioButton ID="rbtn2_2" runat="server" GroupName="P1_2" Text="Contento" />
                </div>
                <div class="col text-left">
                    <asp:RadioButton ID="rbtn2_3" runat="server" GroupName="P1_2" Text="Enojado" />                    
                </div>
                <div class="col text-left mb-2">
                    <asp:RadioButton ID="rbtn2_4" runat="server" GroupName="P1_2" Text="Alegre" />                    
                </div>
            </div>
        </div>
        <div class="row mt-3 mb-3">
            <div class="col d-flex justify-content-center">
                <asp:Button ID="btnLevel1Question1" runat="server" class="btn btn-primary btn-block" Text="Siguiente"  Width="50%" OnClick="btnLevel1Question1_Click"/>
            </div>
        </div>
    </form>
</asp:Content>
