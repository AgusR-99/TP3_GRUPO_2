<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validaciones.aspx.cs" Inherits="TP3_GRUPO_2.Validaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main-form">
            <div class="main-form-city">
                <div class="main-form-city__title">
                    <asp:Label ID="lblCityTitle" runat="server" Text="Localidades"></asp:Label>
                </div>
                <div class="main-form-city__name">
                    <asp:Label ID="lblCityName" runat="server" Text="Nombre de localidad:"></asp:Label>
                    <asp:TextBox ID="txtCityName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValCityName" runat="server" ControlToValidate="txtCityName" EnableClientScript="False" Text=""></asp:RequiredFieldValidator>
                </div>
                <div class="main-form__city-send">
                    <asp:Button ID="btnCitySend" runat="server" Text="Guardar localidad" OnClick="btnCitySend_Click" />
                </div>
            </div>
            <div class="main-form-user">
                <div class="main-form-user__title">
                    <asp:Label ID="lblUserTitle" runat="server" Text="Usuarios"></asp:Label>
                </div>
                <div class="main-form-user__name">
                    <asp:Label ID="lblUsername" runat="server" Text="Nombre usuario:"></asp:Label>
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </div>
                <div class="main-form-user__password">
                    <asp:Label ID="lblUserPwd" runat="server" Text="Contraseña:"></asp:Label>
                    <asp:TextBox ID="txtUserPwd" runat="server" Type="password"></asp:TextBox>
                </div>
                <div class="main-form-user__password-re">
                    <asp:Label ID="lblUserPwdRe" runat="server" Text="Repetir contraseña:"></asp:Label>
                    <asp:TextBox ID="txtUserPwdRe" runat="server" Type="password"></asp:TextBox>
                </div>
                <div class="main-form-user__email">
                    <asp:Label ID="lblUserEmail" runat="server" Text="Correo electronico:"></asp:Label>
                    <asp:TextBox ID="txtUserEmail" runat="server"></asp:TextBox>
                </div>
                <div class="main-form-user__cp">
                    <asp:Label ID="lblUserCp" runat="server" Text="CP:"></asp:Label>
                    <asp:TextBox ID="txtUserCp" runat="server"></asp:TextBox>
                </div>
                <div class="main-form-user__city">
                    <asp:Label ID="lblUserCity" runat="server" Text="Localidades:"></asp:Label>
                    <asp:DropDownList ID="ddlUserCity" runat="server"></asp:DropDownList>
                </div>
                <div class="main-form-use__send">
                    <asp:Button ID="btnUserSend" runat="server" Text="Guardar Usuario" />
                </div>
            </div>
            <div class="main-form-redirect">
                <asp:Button ID="btnRedirect" runat="server" Text="Ir a Inicio.aspx" />
            </div>
        </div>
    </form>
</body>
</html>