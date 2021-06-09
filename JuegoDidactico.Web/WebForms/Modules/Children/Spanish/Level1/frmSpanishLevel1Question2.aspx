<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Children.Master" AutoEventWireup="true" CodeBehind="frmSpanishLevel1Question2.aspx.cs" Inherits="JuegoDidactico.Web.WebForms.frmSpanishLevel1Question2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>    
    
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
            Nivel 1 Actividad 2
        </div>
        <div class="row">
            <h1>El chimpancé</h1>
        </div>
        <div class="row">
            <h5>Lee para comprender:</h5>
            <p>
                El chimpancé es un animal que fabrica una gran variedad de herramientas. Para ello, usa las ramas, piedras, hierbas y hojas de su entorno. Ellas son transformadas para obtener alimentos, defenderse, limpiarse, etc. Por ejemplo, el chimpancé arranca una rama de un árbol y con ella hace una vara. Luego, mete la vara en un hormiguero, la saca con mucho cuidado y lame los insectos que se han quedado pegados en ella. También, elabora lanzas afilando los extremos de los palos con sus dientes. Las utiliza para cazar y para protegerse. Con las piedras, abre los frutos que tienen una cáscara dura y además, le sirven para defenderse, especialmente cuando sus crías están en peligro.
            </p>
        </div>
        <div class="row mb-2">
            <h6>Seleccione la V si la oración es verdadera o la F, si es falsa</h6>
        </div>
        <div class="row d-flex justify-content-center text-center">
            <div class="col-8 rounded mx-3" style="border: solid 1px gray;height:300px; overflow:auto">
                <table class="table">
                    <thead>
                        <tr>
                            <th></th>
                            <th>V</th>
                            <th>F</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-left">1. El chimpancé elabora sus propias herramientas.</td>
                            <td><asp:RadioButton ID="rbtn1_V" runat="server" GroupName="P1" Text="V" /></td>
                            <td><asp:RadioButton ID="rbtn1_F" runat="server" GroupName="P1" Text="F" /></td>
                        </tr>
                        <tr>
                            <td class="text-left">2. El chimpancé es un animal muy listo.</td>
                            <td><asp:RadioButton ID="rbtn2_V" runat="server" GroupName="P2" Text="V" /></td>
                            <td><asp:RadioButton ID="rbtn2_F" runat="server" GroupName="P2" Text="F" /></td>
                        </tr>
                        <tr>
                            <td class="text-left">3. Utiliza piedras para sacar hormigas de la tierra.</td>
                            <td><asp:RadioButton ID="rbtn3_V" runat="server" GroupName="P3" Text="V" /></td>
                            <td><asp:RadioButton ID="rbtn3_F" runat="server" GroupName="3" Text="F" /></td>
                        </tr>
                        <tr>
                            <td class="text-left">4. El chimpancé se alimenta de insectos.</td>
                            <td><asp:RadioButton ID="rbtn4_V" runat="server" GroupName="P4" Text="V" /></td>
                            <td><asp:RadioButton ID="rbtn4_F" runat="server" GroupName="P4" Text="F" /></td>
                        </tr>
                        <tr>
                            <td class="text-left">5. Para hacer sus herramientas, usa elementos de su entorno.</td>
                            <td><asp:RadioButton ID="rbtn5_V" runat="server" GroupName="P5" Text="V" /></td>
                            <td><asp:RadioButton ID="rbtn5_F" runat="server" GroupName="P5" Text="F" /></td>
                        </tr>
                        <tr>
                            <td class="text-left">6. Con las lanzas, abre los frutos de cáscara dura.</td>
                            <td><asp:RadioButton ID="rbtn6_V" runat="server" GroupName="P6" Text="V" /></td>
                            <td><asp:RadioButton ID="rbtn6_F" runat="server" GroupName="P6" Text="F" /></td>
                        </tr>
                        <tr>
                            <td class="text-left">7. Se preocupa de proteger a sus crías.</td>
                            <td><asp:RadioButton ID="rbtn7_V" runat="server" GroupName="P7" Text="V" /></td>
                            <td><asp:RadioButton ID="rbtn7_F" runat="server" GroupName="P7" Text="F" /></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row  mt-3">
            <div class="col d-flex justify-content-center">
                <asp:Button ID="btnLevel1Question2" runat="server" class="btn btn-primary btn-block" Text="Siguiente" Width="50%" OnClick="btnLevel1Question2_Click" />
            </div>
        </div>
    </form>
</asp:Content>
