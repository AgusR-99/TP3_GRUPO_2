﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validaciones.aspx.cs" Inherits="TP3_GRUPO_2.Validaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 61px;
        }
        .auto-style2 {
            width: 100%;
            height: 363px;
            margin-top: 0px;
        }
        .auto-style3 {
            height: 66px;
        }
        .auto-style4 {
            height: 61px;
            width: 235px;
        }
        .auto-style5 {
            height: 66px;
            width: 235px;
        }
        .auto-style6 {
            width: 235px;
        }
        .auto-style7 {
            height: 61px;
            width: 267px;
        }
        .auto-style8 {
            height: 66px;
            width: 267px;
        }
        .auto-style9 {
            width: 267px;
        }
        .auto-style10 {
            margin-bottom: 1px;
        }
        .auto-style11 {
            width: 235px;
            height: 59px;
        }
        .auto-style12 {
            width: 267px;
            height: 59px;
        }
        .auto-style13 {
            height: 59px;
        }
        .auto-style14 {
            width: 235px;
            height: 53px;
        }
        .auto-style15 {
            width: 267px;
            height: 53px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main-form">
            <div class="main-form-city">
                <div class="main-form-city__title">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblCityTitle" runat="server" Text="Localidades" Font-Bold="True" Font-Size="18pt"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
                <div class="main-form-city__name">
                </div>
                <div class="main-form__city-send">
                    <br />
                    <asp:Label ID="lblCityName" runat="server" Text="Nombre de localidad:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtCityName" runat="server" ValidationGroup="Grupo1"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="ValCityName" runat="server" ControlToValidate="txtCityName" EnableClientScript="False" Text="*" ErrorMessage="Ingrese una localidad" ValidationGroup="Grupo1"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CompareValidator ID="cvLocalidad" runat="server" ControlToCompare="ddlUserCity" ControlToValidate="txtCityName" EnableClientScript="False" ValidationGroup="Grupo1"></asp:CompareValidator>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </div>
            <div class="main-form-user">
                <div class="main-form-user__title">
                    <br />
                </div>
                <div class="main-form-user__name">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnCitySend" runat="server" Text="Guardar localidad" OnClick="btnCitySend_Click" ValidationGroup="Grupo1" Width="128px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
                <div class="main-form-user__password">
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblUserTitle" runat="server" Text="Usuarios" Font-Bold="True" Font-Size="18pt"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </div>
                <div class="main-form-user__city">
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style4">
                    <asp:Label ID="lblUsername" runat="server" Text="Nombre usuario:"></asp:Label>
                            </td>
                            <td class="auto-style7">
                    <asp:TextBox ID="txtUsername" runat="server" ValidationGroup="Grupo2"></asp:TextBox>
                            </td>
                            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtUsername" EnableClientScript="False" ValidationGroup="Grupo2" ErrorMessage="Ingrese un nombre de usuario">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                    <asp:Label ID="lblUserPwd" runat="server" Text="Contraseña:"></asp:Label>
                            </td>
                            <td class="auto-style8">
                    <asp:TextBox ID="txtUserPwd" runat="server" Type="password" ValidationGroup="Grupo2"></asp:TextBox>
                            </td>
                            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="rfvContrasenia" runat="server" ControlToValidate="txtUserPwd" EnableClientScript="False" ValidationGroup="Grupo2" ErrorMessage="Ingrese una contraseña">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">
                    <asp:Label ID="lblUserPwdRe" runat="server" Text="Repetir contraseña:"></asp:Label>
                            </td>
                            <td class="auto-style9">
                    <asp:TextBox ID="txtUserPwdRe" runat="server" Type="password" ValidationGroup="Grupo2" CssClass="auto-style10"></asp:TextBox>
                            </td>
                            <td>
                                <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtUserPwd" ControlToValidate="txtUserPwdRe" ErrorMessage="Ambas contraseñas deben ser iguales" ValidationGroup="Grupo2" Display="Dynamic" EnableClientScript="False">*</asp:CompareValidator>
                                <br />
                <asp:RequiredFieldValidator ID="rfvReContrasenia" runat="server" ControlToValidate="txtUserPwdRe" EnableClientScript="False" ValidationGroup="Grupo2" ErrorMessage="Repita la contraseña" Display="Dynamic">*</asp:RequiredFieldValidator>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">
                    <asp:Label ID="lblUserEmail" runat="server" Text="Correo electronico:"></asp:Label>
                            </td>
                            <td class="auto-style9">
                    <asp:TextBox ID="txtUserEmail" runat="server" ValidationGroup="Grupo2"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RegularExpressionValidator ID="revCorreo" runat="server" ControlToValidate="txtUserEmail" ErrorMessage="Ingrese una direccion de correo valida" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" EnableClientScript="False" ValidationGroup="Grupo2">*</asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserEmail" Display="Dynamic" EnableClientScript="False" ErrorMessage="Ingrese un correo electrónico" ValidationGroup="Grupo2">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style14">
                    <asp:Label ID="lblUserCp" runat="server" Text="CP:"></asp:Label>
                            </td>
                            <td class="auto-style15">
                                <asp:TextBox ID="txtUserCP" runat="server" ValidationGroup="Grupo2" MaxLength="4"></asp:TextBox>
                            </td>
                            <td class="auto-style1">
                                <asp:RegularExpressionValidator ID="revCP" runat="server" ControlToValidate="txtUserCP" ErrorMessage="Solo puede ingresar numeros para CP" ValidationExpression="^\d+$" ValidationGroup="Grupo2" EnableClientScript="False">*</asp:RegularExpressionValidator>
                                <br />
                                <asp:RequiredFieldValidator ID="rfvCP" runat="server" ControlToValidate="txtUserCP" ErrorMessage="Ingrese CP" ValidationGroup="Grupo2" EnableClientScript="False">*</asp:RequiredFieldValidator>
                                <br />
                                <asp:CustomValidator ID="cvCP" runat="server" ControlToValidate="txtUserCP" ErrorMessage="Ingrese CP de 4 digitos" OnServerValidate="cvCP_ServerValidate" ValidationGroup="Grupo2">*</asp:CustomValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">
                    <asp:Label ID="lblUserCity" runat="server" Text="Localidades:"></asp:Label>
                            </td>
                            <td class="auto-style12">
                    <asp:DropDownList ID="ddlUserCity" runat="server" ValidationGroup="Grupo2" Width="116px">
                        <asp:ListItem>--Localidad--</asp:ListItem>
                </asp:DropDownList>
                            </td>
                            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="rfvLocalidades" runat="server" ControlToValidate="ddlUserCity" EnableClientScript="False" InitialValue="--Localidad--" ValidationGroup="Grupo2" ErrorMessage="Selecciona una localidad">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="main-form-redirect">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnUserSend" runat="server" Text="Guardar Usuario" style="margin-bottom: 0px" ValidationGroup="Grupo2" Width="128px" OnClick="btnUserSend_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblBienvenida" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                <asp:Button ID="btnRedirect" runat="server" Text="Ir a Inicio.aspx" ValidationGroup="Grupo3" OnClick="btnRedirect_Click" />
                <br />
                <br />
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="Grupo2" />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
        </div>
    </form>
</body>
</html>