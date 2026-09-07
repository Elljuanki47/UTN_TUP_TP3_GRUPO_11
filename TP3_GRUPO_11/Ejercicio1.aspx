<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP3_GRUPO_11.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <h2>Localidades</h2>

        <p>
            <asp:Label ID="lblNombreLocalidad" runat="server"
                Text="Nombre de localidad:"
                AssociatedControlID="txtLocalidad" />

            <asp:TextBox ID="txtLocalidad" runat="server"
                Width="145px" />

            <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server"
                ControlToValidate="txtLocalidad"
                Text="*"
                ErrorMessage="Ingresar localidad"
                ValidationGroup="Localidad">
            </asp:RequiredFieldValidator>
        </p>

        <p>
            <asp:Button ID="btnGuardarLocalidad" runat="server"
                Text="Guardar localidad"
                Width="145px"
                ValidationGroup="Localidad" />
        </p>

        <asp:ValidationSummary ID="vsLocalidad" runat="server"
            HeaderText="Revise los siguientes errores:"
            ShowSummary="True"
            ShowMessageBox="True"
            ValidationGroup="Localidad" />

    </form>
</body>
</html>
