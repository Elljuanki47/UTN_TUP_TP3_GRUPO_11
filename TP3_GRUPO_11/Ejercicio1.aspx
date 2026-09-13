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

        <h2>Usuarios</h2>

        <p>Nombre usuario: <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox></p>

        <p>Contraseña: <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password"></asp:TextBox></p>

        <p>Repetir contraseña: <asp:TextBox ID="txtRepetirContrasena" runat="server" TextMode="Password"></asp:TextBox></p>

        <p>Correo electrónico: <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox></p>
 
        <p>
            CP:
            <asp:TextBox ID="txtCP" runat="server"></asp:TextBox>

            <asp:RequiredFieldValidator ID="rfvCP" runat="server"
                ControlToValidate="txtCP"
                Text="*"
                ErrorMessage="Ingrese código postal"
                ValidationGroup="Usuario">
            </asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator ID="revCP" runat="server"
                ControlToValidate="txtCP"
                ValidationExpression="^[0-9]{4}$"
                Text="*"
                ErrorMessage="El codigo postal debe contener 4 digitos"
                ValidationGroup="Usuario">
            </asp:RegularExpressionValidator>
        </p>
        <p>Localidades:
            <asp:DropDownList ID="ddlLocalidades" runat="server">
            </asp:DropDownList>
        </p>

        <asp:Button ID="btnGuardarUsuario" runat="server" style="margin-left: 87px" Text="Guardar Usuario" Width="120px" ValidationGroup="Usuario"/>
        <p>
            <asp:Button ID="btnInicio" runat="server" Text="Ir a inicio.aspx" />
        </p>

    </form>
</body>
</html>
