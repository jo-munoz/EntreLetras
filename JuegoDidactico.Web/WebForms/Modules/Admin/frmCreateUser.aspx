<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Children.Master" AutoEventWireup="true" CodeBehind="frmCreateUser.aspx.cs" Inherits="JuegoDidactico.Web.WebForms.frmCreateUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="../../../Scripts/filtro/jquery.quicksearch.js" type="text/javascript"></script>
    
    <%--Librerias de Alertify--%>
    <link href="../Scripts/alertify.js/themes/alertify.core.css" rel="stylesheet" type="text/css" />
    <link href="../Scripts/alertify.js/themes/alertify.default.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/alertify.js/lib/alertify.js" type="text/javascript"></script>

    <style type="text/css">
        .inputWithIcon input[type=text] {
            padding-left: 40px;
        }
        .inputWithIcon {
            position: relative;
        }
        .inputWithIcon i {
            position: absolute;
            left: -15px;
            top: 10px;
            padding: 9px 8px;
            color: #aaa;
        }
        .inputWithIcon input[type=text]:focus + i {
            color: dodgerBlue;
        }
    </style>

    <div class="col">
        <h4>Creación de Usuarios</h4>
        <hr />
        <form runat="server">
            <div class="row mb-2">
                <div class="col-2">
                    <asp:Label ID="lblName" runat="server" Text="Nombre y Apellidos:"></asp:Label>
                </div>
                <div class="col-5">
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control form-control-sm" placeholder="Ingrese nombre completo" Width="100%" required=""></asp:TextBox>
                </div>
            </div>

            <div class="row mb-2">
                <div class="col-2">
                    <asp:Label ID="lblUser" runat="server" Text="Usuario:"></asp:Label>
                </div>
                <div class="col-3">
                    <asp:TextBox ID="txtUser" runat="server" CssClass="form-control form-control-sm" placeholder="Ingrese usuario del sistema" Width="100%" required=""></asp:TextBox>
                </div>
            </div>

            <div class="row mb-2">
                <div class="col-2">
                    <asp:Label ID="lblPassword" runat="server" Text="Contraseña:"></asp:Label>
                </div>
                <div class="col-3">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control form-control-sm" placeholder="Ingrese contraseña del usuario" Width="100%" required=""></asp:TextBox>
                </div>
            </div>

            <div class="row mb-2">
                <div class="col-5">
                    <asp:Button ID="txtAddUser" runat="server" Text="Aceptar" class="btn btn-primary btn-block" Width="100%" OnClick="txtAddUser_Click"></asp:Button>
                </div>
            </div>
            <hr />

            <div class="row mb-2">
                <div class="col-3 mx-3">
                    <div class="inputWithIcon">
                        <div class="row">
                            <asp:TextBox ID="txtSearch" CssClass="form-control form-control-sm my-3" type="text" runat="server" placeholder="Buscar" AutoPostBack="false"></asp:TextBox>
                        </div>
                        <div class="row">
                            <i class="icon-search" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mb-2">
                <div class="col-12">
                    <asp:Panel ID="panel1" runat="server" Height="500px" ScrollBars="Auto">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="usuCode_User" DataSourceID="SqlDataSource1"
                            BackColor="White" BorderColor="#afb0cc" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" Width="100%"
                            EmptyDataText="Registro no encontrado." GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">                            
                            <Columns>
                                <asp:CommandField SelectText="Modificar" ShowSelectButton="True" HeaderStyle-Width="5%" ItemStyle-Width="5%" FooterStyle-Width="5%">
                                    <ItemStyle Wrap="false" ForeColor="#009900" />
                                </asp:CommandField>                                
                                <asp:BoundField DataField="usuCode_User" HeaderText="#" SortExpression="usuCode_User" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center" />                                
                                <asp:BoundField DataField="usuUser" HeaderText="USUARIO" SortExpression="usuUser" ItemStyle-HorizontalAlign="Center" />
                                <asp:BoundField DataField="usuPassword" HeaderText="CONTRASEÑA" SortExpression="usuPassword" />
                                <asp:BoundField DataField="usuName" HeaderText="NOMBRES Y APELLIDOS" SortExpression="usuName" />
                                <asp:BoundField DataField="usuRol" HeaderText="ROL" SortExpression="usuRol" ItemStyle-HorizontalAlign="Center" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" CssClass="headGrid" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" BorderColor="#afb0cc" />                            
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bdEntreLetrasConnectionString %>"
                            SelectCommand="SELECT * FROM [tbUsers]"></asp:SqlDataSource>
                    </asp:Panel>
                </div>
            </div>
        </form>
    </div>

    <script type="text/javascript">
        $(document).ready(function () {
            var txtFiltro = '#' + '<%=txtSearch.ClientID %>';
            var grillaJedis = '#' + '<%=GridView1.ClientID %>';
            var thead = document.createElement("thead");
            thead.setAttribute("id", "thGrid");

            document.getElementById("ContentPlaceHolder1_GridView1").appendChild(thead);
            document.getElementById("thGrid").appendChild(document.getElementsByClassName("headGrid")[0]);
            $(txtFiltro).quicksearch(grillaJedis + ' tbody tr');
        });
    </script>
    <script type="../../../Scripts/filtro/jquery-3.3.1.min.js"></script>
</asp:Content>
