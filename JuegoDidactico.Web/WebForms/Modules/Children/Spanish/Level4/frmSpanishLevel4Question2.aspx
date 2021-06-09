<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Children.Master" AutoEventWireup="true" CodeBehind="frmSpanishLevel4Question2.aspx.cs" Inherits="JuegoDidactico.Web.WebForms.Modules.Children.Spanish.Level4.frmSpanishLevel4Question2" %>
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
            Nivel 4 Actividad 2
        </div>
        <div class="row">
            <div class="col text-center">
                <h1>“CHONTADURO MADURO”</h1>
            </div>
        </div>
        <div class="row">            
            <p>Nadie puede explicarse cómo fue que nació esa palma en el patio del rancho.</p>
            <p>Ni mi abuelo Nicomedes que sabe tantas cosas, ni la tía Florinda que se fue a la escuela dos años, la verdad es que todos esperaban una palma de coco, como eran las palmas de Guapi. Pero cuando comenzaron a salirle esas espinas por todo el tronco se asustaron mucho.</p>
            <p>¿Una palma de coco con espinas?</p>
            <p>¿Será un castigo del cielo?</p>
            <p>¿Quién podrá subir a bajarlos?</p>
            <p>Llamaron al Viejo Matías que cura los dolores del ombligo con yerbas secretas para ver si daba con el mal de espinas de la palma de coco.</p>
            <p>Si señores—dijo gravemente, luego de un minucioso examen</p>
            <p>es una palma extraña. —y en seguida se marchó</p>
            <p>Pero apareció el negrito Arturo, hijo de la vecina Candelaria, quien decidió probarlos. Luego de muchos experimentos, descubrió que los frutos de esa palma, cocinados en agua con sal, son deliciosos.</p>
            <p>Cada domingo, el negrito Arturo saca sus cocinados al pueblo.</p>
            <p>! Así se descubrió la palma del chontaduro!</p>
            <p>Eso me contó el abuelo Filomeno quien tampoco sabía nada del asunto.</p>
            <p>“Chontaduro maduro Vende el negrito Arturo Chontaduro con sal, compran y no me dan.”</p>
        </div>
        <div class="row mb-2">
            <h6>1. Seleccione la opción correcta.</h6>
        </div>
        <div class="row d-flex justify-content-center text-center">
            <div class="col-3 rounded mx-3" style="border: solid 1px gray">
                <div class="row justify-content-center bg-white">
                    <img src="../../../../../Images/Palma1.jpg" alt="" class="mt-2 mb-2" height="200px" width="200px" />
                </div>
                <div class="row justify-content-center mb-3 bg-white">
                    <asp:RadioButton ID="rbtn1_1" runat="server" GroupName="P1" />
                </div>
            </div>
            <div class="col-3 rounded mx-3" style="border: solid 1px gray">
                <div class="row justify-content-center">
                    <img src="../../../../../Images/Palma2.jpg" alt="" class="mt-2 mb-2" height="200px" width="200px" />
                </div>
                <div class="row justify-content-center">
                    <asp:RadioButton ID="rbtn1_2" runat="server" GroupName="P1" />
                </div>
            </div>
            <div class="col-3 rounded mx-3" style="border: solid 1px gray">
                <div class="row justify-content-center">
                    <img src="../../../../../Images/Palma3.jpg" alt="" class="mt-2 mb-2" height="200px" width="200px" />
                </div>
                <div class="row justify-content-center">
                    <asp:RadioButton ID="rbtn1_3" runat="server" GroupName="P1" />
                </div>
            </div>            
        </div>
        <hr />
        <div class="row mb-2">
            <h6>2. Seleccione la opción correcta.</h6>
        </div>
        <div class="row d-flex justify-content-center text-center">
            <div class="col-7 rounded mb-4" style="border: solid 1px gray">
                <div class="col-12 mt-2 mb-2">
                    ¿Qué creyeron el abuelo Nicomedes y la tía Florinda del a ver una palma extraña?
                </div>
                <div class="col-12 text-left">
                    <asp:RadioButton ID="rbtn2_1" runat="server" GroupName="P2" Text="Que la palma era normal" />
                </div>
                <div class="col-12 text-left">
                    <asp:RadioButton ID="rbtn2_2" runat="server" GroupName="P2" Text="Que era una palma de coco extraña" />
                </div>
                <div class="col-12 text-left mb-2">
                    <asp:RadioButton ID="rbtn2_3" runat="server" GroupName="P2" Text="Que era un castigo del cielo" />
                </div>
            </div>
        </div>
        <div class="row mt-3 mb-3">
            <div class="col d-flex justify-content-center">
                <asp:Button ID="btnLevel4Question2" runat="server" class="btn btn-primary btn-block" Text="Siguiente" Width="50%" OnClick="btnLevel4Question2_Click" />
            </div>
        </div>
    </form>
</asp:Content>
