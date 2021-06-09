<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Children.Master" AutoEventWireup="true" CodeBehind="frmSpanishLevel5Question1.aspx.cs" Inherits="JuegoDidactico.Web.WebForms.Modules.Children.Spanish.Level5.frmSpanishLevel5Question1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="row">
            Español
        </div>
        <div class="row">
            Nivel 5 Actividad 1
        </div>
        <div class="row">
            <div class="col text-center">
                <h1>El Asno y el Hielo</h1>
            </div>
        </div>
        <div class="row">
            <p>Era invierno, hacía mucho frío y todos los caminos estaban helados. El asno, que estaba cansado, no se encontraba con ganas para caminar hasta el establo.</p>
            <p>iEa, aquí me quedo, ya no quiero andar más —se dijo, dejándose caer al suelo. Un hambriento gorrioncillo fue a posarse cerca de su oreja y le dijo;</p>
            <p>Asno, buen amigo, ten cuidado; no estás en el camino, sino en un lago helado.</p>
            <p>¡Déjame, tengo sueño! Y con un largo bostezo, se quedó dormido. Poco a poco, el calor de su cuerpo comenzó a fundir el hielo hasta que, de pronto, se rompió con un gran chasquido. El asno despertó al caer al agua y empezó a pedir socorro, pero nadie pudo ayudarlo, aunque el gorrión quiso, pero no pudo.</p>
        </div>
        <div class="row mb-2">
            <h6>Seleccione la respuesta correcta.</h6>
        </div>
        <div class="row d-flex justify-content-center text-center">
            <div class="col-8 rounded mb-4 bg-white" style="border: solid 1px gray; height: auto">
                <div class="col-12 mt-2 mb-2">
                    1. ¿Dónde se quedó dormido?
                </div>
                <div class="row d-flex justify-content-center">
                    <div class="col-4">
                        <div class="col-12 text-left">
                            <asp:RadioButton ID="rbtn1_1" runat="server" GroupName="P1" Text="En el camino." />
                        </div>
                        <div class="col-12 text-left">
                            <asp:RadioButton ID="rbtn1_2" runat="server" GroupName="P1" Text="En un lago helado." />
                        </div>
                        <div class="col-12 text-left mb-2">
                            <asp:RadioButton ID="rbtn1_3" runat="server" GroupName="P1" Text="Debajo de un árbol." />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-8 rounded bg-white" style="border: solid 1px gray">
                <div class="col-12 mt-2 mb-2">
                    2. ¿Por qué le ocurrió eso al asno? 
                </div>
                <div class="row d-flex justify-content-center">
                    <div class="col-4">
                        <div class="col-12 text-left">
                            <asp:RadioButton ID="rbtn2_1" runat="server" GroupName="P2" Text="Porque fue caprichoso." />
                        </div>
                        <div class="col-12 text-left">
                            <asp:RadioButton ID="rbtn2_2" runat="server" GroupName="P2" Text="Porque fue perezoso." />
                        </div>
                        <div class="col-12 text-left mb-2">
                            <asp:RadioButton ID="rbtn2_3" runat="server" GroupName="P2" Text="Porque fue dormilón." />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-3 mb-3">
            <div class="col d-flex justify-content-center">
                <asp:Button ID="btnLevel5Question1" runat="server" class="btn btn-primary btn-block" Text="Siguiente" Width="50%" OnClick="btnLevel5Question1_Click" />
            </div>
        </div>
    </form>
</asp:Content>
