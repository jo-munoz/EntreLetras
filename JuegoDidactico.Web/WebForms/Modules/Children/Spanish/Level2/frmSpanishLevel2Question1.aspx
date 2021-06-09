<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Children.Master" AutoEventWireup="true" CodeBehind="frmSpanishLevel2Question1.aspx.cs" Inherits="JuegoDidactico.Web.WebForms.Modules.Children.Spanish.frmSpanishLevel2Question1" %>

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
            Nivel 2 Actividad 1
        </div>
        <div class="row">
            <div class="col text-center">
                <h1>“SAPO Y SEPO”</h1>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <pre>
Sapo y sepo no se sentían bien. Sepo le dijo:
--Hoy estas muy verde, incluso para ser un sapo. Metete a mi cama y descansa
Sepo hizo a sapo una taza de te muy caliente, sapo se bebió el te y luego dijo:
--Cuentame un cuento mientras descanso.
--Esta bien--dijo sepo---. Déjame pensar un cuento para contarte.
Sepo pensaba y pensaba, pero no se le ocurria un cuento para contarle a sapo
--Saldré al pasillo y pasear de un lado a otro—dijo sepo—Quizá eso me ayude a imaginar un cuento.

Sepo así lo hizo, pero no se le ocurria un cuento.
Luego, sepo entró a la casa se puso cabeza a bajo.
--¿por que te pones cabeza abajo? —pregunto sapo 
--Espero que estar cabeza abajo me ayude a imaginarme un cuento dijo—sepo. Pero no se le ocurria ningún cuento.
Luego sepo se hecho un vaso de agua en la cabeza… y comenzó a golpearse la cabeza contra la pared.

--ya me siento mucho mejor, sepo
--dijo sapo--. Creo que ya no necesito un cuento 
Entonces, sal de la cama y deja meterme—dijo sepo--, porque ahora yo me siento fatal.
Sapo dijo
--‘¿Te gustaría que yo te contará un cento, sepo?
--si—dijo sapo 
--Había una vez—dijo sapo-- dos buenos amigos sapos: uno se llamaba sepo y el otro
sapo. Sapo no se sentía bien y le pidio a sepo que le contará un cuento. Sepo no supo
imaginarse un cuento. Camino de un lado al otro del pasillo, se puso cabeza abajo; pero
no se le ocurria un cuento, se echo agua la cabeza, se golpeó la cabeza contra la pared;
pero ni aún así se le ocurria un cuento. Luego fue sepo quien no se sentía bien. Asi que
sepo se metió en la cama y sapo se levantó y le contó un cuento. Fin ¿Que tal? sepo?
Sepo no contesto; se Había quedado dormido.
                </pre>
            </div>
        </div>
        <h6 class="col-12">1. Ordena la historia. Seleccione 1, 2 y 3</h6>
        <div class="row d-flex align-items-center mb-2">
            <div class="col-1">
                <asp:DropDownList ID="ddl1_1" runat="server" required="" Width="100%" CssClass="custom-select">
                    <asp:ListItem> </asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-8">
                <div>Sepo se enfermo al tratar de inventar un cuento</div>
            </div>
        </div>
        <div class="row d-flex align-items-center mb-2">
            <div class="col-1">
                <asp:DropDownList ID="ddl1_2" runat="server" required="" Width="100%" CssClass="custom-select">
                    <asp:ListItem> </asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-8">
                <div>Sapo le contó un cuento a sepo</div>
            </div>
        </div>
        <div class="row d-flex align-items-center mb-2">
            <div class="col-1">
                <asp:DropDownList ID="ddl1_3" runat="server" required="" Width="100%" CssClass="custom-select">
                    <asp:ListItem> </asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-8">
                <div>Sapo se enfermo y sepo lo cuidó</div>
            </div>
        </div>

        <hr />

        <h6 class="col-12">2. Selecciona</h6>
        <div class="row d-flex align-items-center mb-2">
            <div class="col-5">
                <div>¿De qué trata la lectura?</div>
            </div>
            <div class="col-5">
                <asp:DropDownList ID="ddl2_1" runat="server" required="" Width="100%" CssClass="custom-select">
                    <asp:ListItem> </asp:ListItem>
                    <asp:ListItem>De dos amigos sapos que quieren salir a jugar.</asp:ListItem>
                    <asp:ListItem>De dos amigos sapos que quieren contarse un cuento.</asp:ListItem>
                    <asp:ListItem>De dos amigos sapos que salen a pasear.</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="row d-flex align-items-center mb-2">
            <div class="col-5">
                <div>¿Qué hizo sepo para intentar inventar un cuento?</div>
            </div>
            <div class="col-5">
                <asp:DropDownList ID="ddl2_2" runat="server" required="" Width="100%" CssClass="custom-select">
                    <asp:ListItem> </asp:ListItem>
                    <asp:ListItem>Hecho agua en su cabeza, dio un paseo, se golpeo la cabeza contra la pared.</asp:ListItem>
                    <asp:ListItem>Dio un paseo, comio algo, se acosto a dormer.</asp:ListItem>
                    <asp:ListItem>Nada le dijo a su amigo que no se sabia ningun cuento.</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="row mt-3 mb-3">
            <div class="col d-flex justify-content-center">
                <asp:Button ID="btLevel2Question1" runat="server" class="btn btn-primary btn-block" Text="Siguiente" Width="50%" OnClick="btLevel2Question1_Click" />
            </div>
        </div>
    </form>
</asp:Content>
