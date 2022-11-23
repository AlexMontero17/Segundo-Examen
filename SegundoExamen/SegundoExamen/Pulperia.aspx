<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pulperia.aspx.cs" Inherits="SegundoExamen.Pulperia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 346px">
    <form id="form1" runat="server">
        <div>
            Ventas:<br />
            <br />
            Producto<br />
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Codigo_Maquina" DataValueField="Codigo_Maquina">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PulperiaConnectionString %>" SelectCommand="SELECT [Codigo_Maquina] FROM [MaquinaRegistradora]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            Maquina<br />
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Codigo_Cajero" DataValueField="Codigo_Cajero">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PulperiaConnectionString2 %>" SelectCommand="SELECT [Codigo_Cajero] FROM [Cajeros]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            Cajero<br />
            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="Codigo_Cajero" DataValueField="Codigo_Cajero">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:PulperiaConnectionString3 %>" SelectCommand="SELECT [Codigo_Cajero] FROM [Cajeros]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
