<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Children.Master" AutoEventWireup="true" CodeBehind="frmSpanishLevel3Question1.aspx.cs" Inherits="JuegoDidactico.Web.WebForms.Modules.Children.Spanish.Level3.frmSpanishLevel3Question1" %>

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
            Nivel 3 Actividad 1
        </div>
        <div class="row">
            <div class="col text-center">
                <h1>“LA PAJARITA DE PAPEL”</h1>
            </div>
        </div>
        <div class="row">
            <pre>
Tato tenía 7 años y un caballo de madera. Un día, su padre le dijo:
-¿Qué regalo quieres? Dentro de poco será tu cumpleaños.
Tato le dijo:
-Quiero que me hagas una pajarita de papel.
El padre de Tato hizo una pajarita maravillosa. El Niño la miro y dijo:
-Está muy bien hecha, pero no me gusta. La pajarita está muy triste.
El padre fue a la casa de varios sabios y les pidió que hicieran algo para que la pajarita volara.
El primer sabio hizo un aparato para que la pajarita volará. Aunque volaba muy bien la pajarita seguía triste.
El Segundo sabio con el que la pajarita podía cantar. Pero la pajarita cantaba una triste canción.
El padre de Tato fue a la casa de un pintor muy Famoso que pinto de hermosos colores a la pajarita. Y la pajarita seguía triste.
El padre de Tato fue a la casa del más sabio de todos los sabios. Y el sabio más sabio de todos los sabios, 
después de examinar a la pajarita le dijo:
-Esta pajarita de papel no necesita volar, no necesita cantar, no necesita hermosos colores para ser feliz.
Y el padre de Tato le preguntó:
-Entonces, ¿por qué esta triste?
Y el sabio más sabio de todos los sabios le contestó:
-Cuando una pajarita de papel está sola, es una pajarita triste.
El padre regreso a casa. Fue al cuarto de Tato y le dijo: 
-Ya se lo que necesita nuestra pajarita para ser feliz
Y se puso hacer muchas, muchas pajaritas de papel. Y cuando la habitación estuvo llena de pajaritas, Tato grito:
-¡Mira, papá! Nuestra pajarita de papel ya es muy feliz. Ese es el mejor regalo que me has hecho en toda mi vida.
            </pre>
        </div>
        <div class="row mb-2">
            <h6>1. Ordena la historia. Seleccione el 1, 2 y 3.</h6>
        </div>
        <div class="row d-flex justify-content-center text-center">
            <div class="col-3 rounded mx-3" style="border: solid 1px gray">
                <div class="row justify-content-center bg-white">
                    <img src="../../../../../Images/Pagaro1.jpg" alt="" class="mt-2 mb-2" height="200px" width="200px" />
                </div>
                <div class="row justify-content-center bg-white">
                    <asp:DropDownList ID="ddl1_1" runat="server" Width="40%" CssClass=" custom-select mb-2" required="">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-3 rounded mx-3" style="border: solid 1px gray">
                <div class="row justify-content-center bg-white">
                    <img src="../../../../../Images/Pagaro2.jpg" alt="" class="mt-2 mb-2" height="200px" width="200px" />
                </div>
                <div class="row justify-content-center bg-white">
                    <asp:DropDownList ID="ddl1_2" runat="server" Width="40%" CssClass="custom-select mb-2" required="">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-3 rounded mx-3" style="border: solid 1px gray">
                <div class="row justify-content-center bg-white">
                    <img src="../../../../../Images/Pagaro3.jpg" alt="" class="mt-2 mb-2" height="200px" width="200px" />
                </div>
                <div class="row justify-content-center bg-white">
                    <asp:DropDownList ID="ddl1_3" runat="server" Width="40%" CssClass=" custom-select mb-2" required="">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>            
        </div>
        <hr />
        <div class="row mb-2">
            <h6>2. Seleccione la respuesta correcta:</h6>
        </div>
        <div class="row d-flex justify-content-center">
            <div class="col-6 rounded mx-3 bg-white" style="border: solid 1px gray">
                <div class="row justify-content-center">¿Qué paso primero?</div>
                <div class="row justify-content-center">Primero:</div>
                <div class="row justify-content-center">
                    <asp:DropDownList ID="ddl2_1" runat="server" Width="40%" CssClass="col-11 custom-select mb-2" required="">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>Tato le pidió a su padre que  le  regalara una pajarita de papel</asp:ListItem>
                        <asp:ListItem>Tato le dijo a su padre que que la pajarita estaba triste</asp:ListItem>
                        <asp:ListItem>El padre de Tato llevó a la pajarita con un sabio</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            
            <div class="col-6 rounded mt-3 bg-white" style="border: solid 1px gray">
                <div class="row justify-content-center">¿Qué sucedio después?</div>
                <div class="row justify-content-center">Después:</div>
                <div class="row justify-content-center">
                    <asp:DropDownList ID="ddl2_2" runat="server" Width="40%" CssClass="col-11 custom-select mb-2" required="">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>El padre  de Tato hizo mas pajaritas de papel</asp:ListItem>
                        <asp:ListItem>Tato vio que la pajarita estaba triste y su padre la llevó donde dirferentes sabios para hacerla feliz</asp:ListItem>
                        <asp:ListItem>Tato estaba muy feliz</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div> 
        </div>
        <div class="row mt-3 mb-3">
            <div class="col d-flex justify-content-center">
                <asp:Button ID="btnLevel3Question1" runat="server" class="btn btn-primary btn-block" Text="Siguiente" Width="50%" OnClick="btnLevel3Question1_Click" />
            </div>
        </div>
    </form>
</asp:Content>
