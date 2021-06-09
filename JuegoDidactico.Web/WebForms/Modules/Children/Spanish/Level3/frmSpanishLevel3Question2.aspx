<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Children.Master" AutoEventWireup="true" CodeBehind="frmSpanishLevel3Question2.aspx.cs" Inherits="JuegoDidactico.Web.WebForms.Modules.Children.Spanish.Level3.frmSpanishLevel3Question2" %>

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
            Español
        </div>
        <div class="row">
            Nivel 3 Actividad 2
        </div>
        <div class="row">
            <div class="col text-center">
                <h1>“ASI ERAMOS LOS QUIMBAYAS”</h1>
            </div>
        </div>
        <div class="row">
            <p>Nuestra tierra era verde y muy fertil, toda ondulada, cruzada por quebradas cristalinas y rios encañonados. Veiamos, no muy lejos, varios nevados: Ruiz, Cisne, Quindío, Tolima y Santa Isabel. El volcán del Ruiz nos asustaba a veces, botando cenizas con gran estruendo.</p>
            <p>Éramos 60.000, quimbayas y viviamos en pequeños poblados, situados arriba en la serrania, sobre las Colinas y abajo en Las Vegas de los rios. Cada poblado estaba formado por muchas casas dispersas y tenia su propio jefe.</p>
            <p>Las casas eran redondas, con techo de hojas de palma y soportes de guadua.</p>
            <p>El fogón para cocinar quedaba abajo con otro techo cercano.</p>
            <p>Dormiamos en hamacas o sobre esteras.</p>
            <p>No muy lejos de mi casa, Vivían nuestros parientes y vecinos y cuando queriamos visitarlos, atravesabamos las sementeras por angostos camino que cruzaban el poblado.</p>
        </div>
        <div class="row mb-2">
            <h6>Busca en el texto la respuesta correcta y seleccionala</h6>
        </div>
        <div class="row d-flex justify-content-center text-center">
            <div class="col-7 rounded mb-4 bg-white" style="border: solid 1px gray">
                <div class="col-12 mt-2 mb-2">
                    1. ¿Qué nevados se alcanzan a ver?
                </div>
                <div class="col-12 text-left">
                    <asp:RadioButton ID="rbtn1_1" runat="server" GroupName="P1" Text="Ruiz, Laguna san diego, Sotara" />
                </div>
                <div class="col-12 text-left">
                    <asp:RadioButton ID="rbtn1_2" runat="server" GroupName="P1" Text="Ruiz, Cisne, Quindio, Tolima y Santa Isabel" />
                </div>
                <div class="col-12 text-left mb-2">
                    <asp:RadioButton ID="rbtn1_3" runat="server" GroupName="P1" Text="Tolima y Santa Isabel" />
                </div>
            </div>
            <div class="col-7 rounded bg-white" style="border: solid 1px gray">                
                <div class="col-12 mt-2 mb-2">
                    2. ¿En esta lectura nos cuentan?
                </div>                
                <div class="col-12 text-left">
                    <asp:RadioButton ID="rbtn2_1" runat="server" GroupName="P2" Text="Cómo era el rostro de los indigenas quimbayas" />
                </div>
                <div class="col-12 text-left">
                    <asp:RadioButton ID="rbtn2_2" runat="server" GroupName="P2" Text="Cómo era su vivencia y el lugar donde habitaban" />
                </div>
                <div class="col-12 text-left mb-2">
                    <asp:RadioButton ID="rbtn2_3" runat="server" GroupName="P2" Text="Qué productos sembraban" />
                </div>
            </div>
        </div>
        <%--<hr />
        <div class="row mb-2">
            <h6>2. Elige la oración correcta.</h6>
        </div>
        <div class="row d-flex justify-content-center text-center">
            <div class="col-7 rounded mb-4" style="border: solid 1px gray">                
                <div class="col-12 mt-2 mb-2">
                    ¿A quién visitaban?
                </div>                
                <div class="col-12 text-left">
                    <asp:RadioButton ID="rbtn3_1" runat="server" GroupName="P3" Text="A los niños del Alferez Real." />
                </div>
                <div class="col-12 text-left">
                    <asp:RadioButton ID="rbtn3_2" runat="server" GroupName="P3" Text="A sus amigos." />
                </div>
                <div class="col-12 text-left mb-2">
                    <asp:RadioButton ID="rbtn3_3" runat="server" GroupName="P3" Text="A sus parientes y vecinos." />
                </div>
            </div>
            <div class="col-7 rounded" style="border: solid 1px gray">
                <div class="col-12 mt-2 mb-2">
                    En esta lectura nos cuentan:
                </div>
                <div class="col-12 text-left">
                    <asp:RadioButton ID="rbtn4_1" runat="server" GroupName="P4" Text="Cómo era el rostro de los indigenas quimbayas." />
                </div>
                <div class="col-12 text-left">
                    <asp:RadioButton ID="rbtn4_2" runat="server" GroupName="P4" Text="Cómo era su vivencia y el lugar donde habitaban." />
                </div>
                <div class="col-12 text-left mb-2">
                    <asp:RadioButton ID="rbtn4_3" runat="server" GroupName="P4" Text="Qué productos sembraban." />
                </div>
            </div>
        </div>--%>
        <div class="row mt-3 mb-3">
            <div class="col d-flex justify-content-center">
                <asp:Button ID="btnLevel3Question2" runat="server" class="btn btn-primary btn-block" Text="Siguiente" Width="50%" OnClick="btnLevel3Question2_Click" />
            </div>
        </div>
    </form>
</asp:Content>
