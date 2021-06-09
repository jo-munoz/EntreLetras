<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Children.Master" AutoEventWireup="true" CodeBehind="frmSelectLevel.aspx.cs" Inherits="JuegoDidactico.Web.WebForms.Modules.Children.Math.frmSelectLevel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            height: 100vh;
        }

        .contenedor {
            width: 200px;
            border: solid 2px #000;
        }

        .content {
            -webkit-box-shadow: 0px 0px 7px -2px rgba(0,0,0,0.75);
            -moz-box-shadow: 0px 0px 7px -2px rgba(0,0,0,0.75);
            box-shadow: 0px 0px 7px -2px rgba(0,0,0,0.75);
            background-color: #fff;
            width: 50%;
            height: auto;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            box-sizing: border-box;
            padding: 100px;
            margin: auto;
            text-align: center;
        }
    </style>
   <div class="container mt-2">
        <form runat="server">
            <div class="row  justify-content-center">
                <div class="col-12 d-flex justify-content-center">
                    <img class="img-fluid" src="../../../../Images/portada.jpg" width="16%" />
                </div>
            </div>

            <div class="row mt-2 justify-content-center">
                <div class="col-10 rounded bg-light">
                    <div class="row justify-content-center mt-3 mb-3 ">
                        <div class="col-10 text-center">
                            <h1>Niveles de Matemáticas:</h1><h3> Seleccione Nivel</h3>
                        </div>
                    </div>

                    <div class="row border-0 rounded justify-content-center mb-5">
                        <div class="col-2 d-flex img-fluid rounded align-items-center text-center bg-info">                           
                            <figure class="figure">
                                <asp:ImageButton ID="LockedLevel1" runat="server" CssClass="img-fluid mt-2" src="../../../../Images/one.png" alt="" Width="50%" Height="50%" Style="cursor: pointer;" OnClick="LockedLevel1_Click" />
                            </figure>
                        </div>
                        <div class="col-2 d-flex img-fluid rounded align-items-center text-center mx-4 bg-info">
                            <figure class="figure">
                                <asp:ImageButton ID="LockedLevel2" runat="server" CssClass="img-fluid mt-2" src="../../../../Images/locked.png" alt="" Width="100%" Height="100%" Style="cursor: not-allowed;" Visible="true" />
                                <asp:ImageButton ID="UnlockedLevel2" runat="server" CssClass="img-fluid mt-2" src="../../../../Images/two.png" alt="" Width="60%" Height="60%" Style="cursor: pointer;" Visible="false" OnClick="UnlockedLevel2_Click" />                                
                            </figure>
                        </div>
                        <div class="col-2 d-flex img-fluid rounded align-items-center text-center bg-info">                            
                            <figure class="figure">
                                <asp:ImageButton ID="LockedLevel3" runat="server" CssClass="img-fluid mt-2" src="../../../../Images/locked.png" alt="" Width="100%" Height="100%" Style="cursor: not-allowed;" Visible="true" />
                                <asp:ImageButton ID="UnlockedLevel3" runat="server" CssClass="img-fluid mt-2" src="../../../../Images/three.png" alt="" Width="50%" Height="50%" Style="cursor: pointer;" Visible="false" OnClick="UnlockedLevel3_Click" />
                            </figure>                            
                        </div>
                    </div>

                    <div class="row border-0 rounded justify-content-center mb-4">
                        <div class="col-2 d-flex img-fluid rounded align-items-center text-center bg-info">
                            <figure class="figure">
                                <asp:ImageButton ID="LockedLevel4" runat="server" CssClass="img-fluid mt-2" src="../../../../Images/locked.png" alt="" Width="100%" Height="100%" Style="cursor: not-allowed;" Visible="true" />
                                <asp:ImageButton ID="UnlockedLevel4" runat="server" CssClass="img-fluid mt-2" src="../../../../Images/four.png" alt="" Width="50%" Height="50%" Style="cursor: pointer;" Visible="false" OnClick="UnlockedLevel4_Click" />
                            </figure>
                        </div>
                        <div class="col-2 d-flex img-fluid rounded align-items-center text-center mx-4 bg-info">                            
                            <figure class="figure">
                                <asp:ImageButton ID="LockedLevel5" runat="server" CssClass="img-fluid mt-2" src="../../../../Images/locked.png" alt="" Width="100%" Height="100%" Style="cursor: not-allowed;" Visible="true" />
                                <asp:ImageButton ID="UnlockedLevel5" runat="server" CssClass="img-fluid mt-2" src="../../../../Images/five.png" alt="" Width="50%" Height="50%" Style="cursor: pointer;" Visible="false" OnClick="UnlockedLevel5_Click" />
                            </figure>                            
                        </div>
                        <div class="col-2 d-flex img-fluid rounded align-items-center text-center bg-info">                            
                            <figure class="figure">
                                <%--<asp:ImageButton ID="LockedWord" runat="server" CssClass="img-fluid mt-2" src="../../../../Images/locked.png" alt="" Width="100%" Height="100%" Style="cursor: not-allowed;" Visible="true" />--%>
                                <asp:ImageButton ID="UnlockedWord" runat="server" CssClass="img-fluid mt-2" src="../../../../Images/word.png" alt="" Width="80%" Height="80%" Style="cursor: pointer;" Visible="true" OnClick="UnlockedWord_Click" />
                            </figure> 
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <script type="text/javascript">
        var varLevelPassedSpanish;
        varLevelPassedSpanish = '<%=Session["LevelPassedMath"]%>';

        if (varLevelPassedSpanish === "Level1") {
            document.getElementById("<%=LockedLevel1.ClientID%>").style.cursor = "not-allowed";
            document.getElementById("<%=LockedLevel1.ClientID%>").onclick = "";
        }
        if (varLevelPassedSpanish === "Level2") {
            document.getElementById("<%=LockedLevel1.ClientID%>").style.cursor = "not-allowed";
            document.getElementById("<%=LockedLevel1.ClientID%>").onclick = "";
            document.getElementById("<%=UnlockedLevel2.ClientID%>").style.cursor = "not-allowed";
            document.getElementById("<%=UnlockedLevel2.ClientID%>").onclick = "";
        }
        else if (varLevelPassedSpanish === "Level3") {
            document.getElementById("<%=LockedLevel1.ClientID%>").style.cursor = "not-allowed";
            document.getElementById("<%=LockedLevel1.ClientID%>").onclick = "";
            document.getElementById("<%=UnlockedLevel2.ClientID%>").style.cursor = "not-allowed";
            document.getElementById("<%=UnlockedLevel2.ClientID%>").onclick = "";
            document.getElementById("<%=UnlockedLevel3.ClientID%>").style.cursor = "not-allowed";
            document.getElementById("<%=UnlockedLevel3.ClientID%>").onclick = "";
        }
        else if (varLevelPassedSpanish === "Level4") {
            document.getElementById("<%=LockedLevel1.ClientID%>").style.cursor = "not-allowed";
            document.getElementById("<%=LockedLevel1.ClientID%>").onclick = "";
            document.getElementById("<%=UnlockedLevel2.ClientID%>").style.cursor = "not-allowed";
            document.getElementById("<%=UnlockedLevel2.ClientID%>").onclick = "";
            document.getElementById("<%=UnlockedLevel3.ClientID%>").style.cursor = "not-allowed";
            document.getElementById("<%=UnlockedLevel3.ClientID%>").onclick = "";
            document.getElementById("<%=UnlockedLevel4.ClientID%>").style.cursor = "not-allowed";
            document.getElementById("<%=UnlockedLevel4.ClientID%>").onclick = "";
        }
        else if (varLevelPassedSpanish === "Level5") {
            document.getElementById("<%=LockedLevel1.ClientID%>").style.cursor = "not-allowed";
            document.getElementById("<%=LockedLevel1.ClientID%>").onclick = "";
            document.getElementById("<%=UnlockedLevel2.ClientID%>").style.cursor = "not-allowed";
            document.getElementById("<%=UnlockedLevel2.ClientID%>").onclick = "";
            document.getElementById("<%=UnlockedLevel3.ClientID%>").style.cursor = "not-allowed";
            document.getElementById("<%=UnlockedLevel3.ClientID%>").onclick = "";
            document.getElementById("<%=UnlockedLevel4.ClientID%>").style.cursor = "not-allowed";
            document.getElementById("<%=UnlockedLevel4.ClientID%>").onclick = "";
            document.getElementById("<%=UnlockedLevel5.ClientID%>").style.cursor = "not-allowed";
            document.getElementById("<%=UnlockedLevel5.ClientID%>").onclick = "";
        }
    </script>
</asp:Content>
