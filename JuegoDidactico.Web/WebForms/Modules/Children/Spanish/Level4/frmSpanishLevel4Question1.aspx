<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Children.Master" AutoEventWireup="true" CodeBehind="frmSpanishLevel4Question1.aspx.cs" Inherits="JuegoDidactico.Web.WebForms.Modules.Children.Spanish.Level4.frmSpanishLevel4Question1" %>
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
            Español
        </div>
        <div class="row">
            Nivel 4 Actividad 1
        </div>
        <div class="row">
            <div class="col text-center">
                <h1>¿Quién es más fuerte?</h1>
            </div>
        </div>
        <div class="row">
            <h5>El Viento y el Sol</h5>
        </div>
        <div class="row">                        
            <p>Discutían un día el Viento y el Sol acerca de cuál de los dos era el más fuerte cuando vieron pasar un hombre envuelto en una capa.  El Viento se echó a reír y dijo:</p>
            <p>Se abraza a su capa como si fuera a perderla. No sabe que con solo soplar un poco, yo se la arrancaría. El Sol, entonces, le propuso ver quién de los dos podía quitarle la capa.</p>
            <p>El Viento comenzó a soplar, cada vez con más furia.</p>
            <p>Pero, cuanto más fuerte lo hacía, más se envolvía el hombre con la capa. Por fin, el Viento se calmó y se declaró vencido.</p>
            <p> Y entonces salió el Sol de entre las nubes y comenzó a entibiar suavemente la tierra y a acariciar al viajero con sus rayos. El hombre anduvo un poco y luego, se sacó la capa y la colgó en su brazo.</p>
            <p> El Sol demostró entonces al Viento que la suavidad y el amor son más poderosos que la furia y la fuerza. </p>            
        </div>
        <div class="row mb-2">
            <h6>Seleccione la respuesta correcta.</h6>
        </div>
        <div class="row d-flex justify-content-center text-center">
            <div class="col-8 rounded mb-4 bg-white" style="border: solid 1px gray; height: auto">
                <div class="col-12 mt-2 mb-2">
                    1. ¿Por qué discutían el Viento y el Sol?
                </div>
                <div class="col-12 text-left">
                    <asp:RadioButton ID="rbtn1_1" runat="server" GroupName="P1" Text="Discutían acerca de cuál soplaba más fuerte" />
                </div>
                <div class="col-12 text-left">
                    <asp:RadioButton ID="rbtn1_2" runat="server" GroupName="P1" Text="Discutían acerca de quién podía quitarle la capa al sol" />
                </div>
                <div class="col-12 text-left mb-2">
                    <asp:RadioButton ID="rbtn1_3" runat="server" GroupName="P1" Text="Discutían acerca de quién era el más fuerte" />
                </div>
            </div>
            <div class="col-8 rounded bg-white" style="border: solid 1px gray">                
                <div class="col-12 mt-2 mb-2">
                    2. ¿Qué apuesta hicieron el Viento y el Sol?
                </div>                
                <div class="col-12 text-left">
                    <asp:RadioButton ID="rbtn2_1" runat="server" GroupName="P2" Text="El viento  y el sol apostaron ver quién de los dos era el más graciosos" />
                </div>
                <div class="col-12 text-left">
                    <asp:RadioButton ID="rbtn2_2" runat="server" GroupName="P2" Text="El viento  y el sol apostaron ver quién de los dos podía quitarle la capa al hombre" />
                </div>
                <div class="col-12 text-left mb-2">
                    <asp:RadioButton ID="rbtn2_3" runat="server" GroupName="P2" Text="El viento  y el sol apostaron ver quién de los dos era el más fuerte" />
                </div>
            </div>
        </div>
        <div class="row mt-3 mb-3">
            <div class="col d-flex justify-content-center">
                <asp:Button ID="btnLevel4Question1" runat="server" class="btn btn-primary btn-block" Text="Siguiente" Width="50%" OnClick="btnLevel4Question1_Click" />
            </div>
        </div>
    </form>
</asp:Content>
