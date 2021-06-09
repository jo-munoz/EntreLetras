<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Children.Master" AutoEventWireup="true" CodeBehind="frmRecord.aspx.cs" Inherits="JuegoDidactico.Web.WebForms.Modules.Admin.frmRecord" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="../../../Scripts/filtro/jquery.quicksearch.js" type="text/javascript"></script>

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

    <form runat="server">
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
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                        BackColor="White" BorderColor="#AFB0CC" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" Width="100%"
                        EmptyDataText="Registro no encontrado." GridLines="Horizontal">
                        <Columns>
                            <asp:BoundField DataField="#" HeaderText="#" SortExpression="#" />
                            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" DataFormatString="{0:d}">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Usuario" HeaderText="Usuario" ReadOnly="True" SortExpression="Usuario">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" ReadOnly="True" SortExpression="Nombre" />
                            <asp:BoundField DataField="Materia" HeaderText="Materia" SortExpression="Materia">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Nivel" HeaderText="Nivel" SortExpression="Nivel">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Resultado" HeaderText="Resultado" ReadOnly="True" SortExpression="Resultado">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" CssClass="headGrid" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" BorderColor="#afb0cc" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bdEntreLetrasConnectionString2 %>" SelectCommand="spRecordSearch" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="0" Direction="InputOutput" Name="cMensaje" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:Panel>
            </div>
        </div>
    </form>

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
