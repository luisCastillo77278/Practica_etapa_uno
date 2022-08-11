<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientesForm.aspx.cs" Inherits="Practica_Etapa_Uno.aspx.ClientesForm" %>

<!DOCTYPE html>
<%-- PRACTICA 3: LABELS. TEXTBOXES. BUTTONES. 
        PRIMER BLOKE: AGREGAR CONTROLES PARA RECIBIR INFORMACION DEL CLIENTE NOMBRE COMPLETO SEPARADO POR APELLIDOS Y NOMBRE. IGUAL SE DEBE CAPTURAR LA FECHA DE NACIMIENTO.
        SEGUNDO BLOKE: AGREGAR BOTTON PARA GUARDAR.

    ¡EXITO! EQUIPO......

 --%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head2" runat="server">
    <title>CLIENTES</title>
</head>
<body style="padding-left:20%">
    <form id="form2" runat="server">
    <h3>CLIENTES:</h3>
         <div class="lbls-txts">
             <h5>Favor de capturar el nombre del Cliente</h5><br />
             <%-- PRIMER BLOKE --%> <%-- LABELS Y TEXBOXS --%>

             <%-- NOMBRE --%>
             <asp:label ID="lblNombre" runat="server"> * Nombre: </asp:label>
             <asp:textbox ID="txtNombre" runat="server" MaxLength="20"> </asp:textbox> <br />

             <%-- APPELLIDO PATERNO --%>
             <asp:label ID="lblAPaterno" runat="server"> * Apellido Paterno: </asp:label>
             <asp:textbox ID="txtAPaterno" runat="server" MaxLength="20"> </asp:textbox> <br />

             <%-- APPELLIDO MATERNO --%>
             <asp:label ID="lblAMaterno" runat="server"> * Apellido materno: </asp:label>
             <asp:textbox ID="txtAMaterno" runat="server" MaxLength="20"> </asp:textbox> <br />

             <%-- FECHA DE NACIMIENTO --%>
             <asp:label ID="lblFechNac" runat="server"> * Fecha de Nacimiento: </asp:label>
             <asp:textbox ID="txtFech_Nac" runat="server"> </asp:textbox> <br />
         </div>
        
         <div class="btns">
            <%-- SEGUNDO BLOKE --%> <%-- BUTTONS AQUI--%>

             <%-- BOTON PARA GUARDAR--%>
            <asp:Button id="btnGuardar" Text="Guardar" runat="server" OnClick="btnGuardar_Click"/>
         </div>
     </form>
</body>
</html>
