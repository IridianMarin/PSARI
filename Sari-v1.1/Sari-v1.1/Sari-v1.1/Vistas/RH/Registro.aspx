<%@ Page Title="" Language="C#" MasterPageFile="~/MiPaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Sari_v1._1.Vistas.RH.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Content/simple-sidebar.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <form runat="server" method="post">
            <div class="shadow" >
                            <h1>Registro</h1>
                            <div class="preview-box">
                                <div class="">
                                    <h1 class="">Domicilio</h1>
                                </div>
                                <div class="bs-example ">
                                    <div class="form-inline" role="form">
                            <div class="form-group ">
                                        <label for="option">Tipo de Calle: </label>
                                        <select name="" id="option" class="form-control  ">
                                            <option value="">...</option>
                                            <option value="">Calle</option>
                                            <option value="">Privada</option>
                                            <option value="">Diagonal</option>
                                            <option value="">Cerrada</option>
                                        </select>
                            </div>  
                            <div class="form-group">
                                <label class="" for="inputCalle">Calle</label>
                                <asp:TextBox ID="inputCalle" CssClass="form-control" runat="server" > </asp:TextBox>
                            </div>
                            <div class="form-group ji">
                                <label class="" for="inputColo">Colonia</label>
                                <asp:TextBox ID="inputColo" CssClass="form-control" runat="server" > </asp:TextBox>
                            </div>
                            
                            
                            </div>
                            <br/>
                                </div>
                                <div class="bs-example">
                        <div class="form-inline" role="form">
                            <div class="form-group">
                                        <label for="inputMu">Municipio</label>
                                        <asp:TextBox ID="inputMu" runat="server" CssClass="form-control"> </asp:TextBox>
                            </div>  
                            <div class="form-group">
                                <label class="" for="inputEs">Estado</label>
                                <asp:TextBox ID="inputEs" runat="server" CssClass="form-control" > </asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="  " for="inputPa">País</label>
                                <asp:TextBox ID="inputPa" runat="server" CssClass="form-control" > </asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="  " for="inputCP">C.P</label>
                                <asp:TextBox ID="inputCP" runat="server" CssClass="form-control" > </asp:TextBox>
                            </div>
                           
                            </div>
                            <br/>
                            
                                </div>
                                <div class="bs-example">
                        <div class="form-inline" role="form">
                            <div class="form-group">
                                        <label for="inputNI">No. Interior</label>
                                        <asp:TextBox ID="inputNI" CssClass="form-control" runat="server" > </asp:TextBox>
                            </div>  
                            <div class="form-group">
                                <label class="" for="inputNExt">No. Exterior</label>
                                <asp:TextBox ID="inputNExt" CssClass="form-control" runat="server" > </asp:TextBox>
                            </div>
                            
                            </div>
                            <br/>
                            <div class="form-group">
                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Siguiente" OnClick="Unnamed1_Click"/>
                            </div>
                            
                                </div>
                            </div>
                        </div>
                        <div class="shadow" >
                            <div class="preview-box">
                                <div class="">
                                    <h1 class="">Datos Personales</h1>
                                </div>
                                <div class="bs-example ">
                                    <div class="form-inline" role="form">
                            <div class="form-group ">
                                        <label for="Nom">Nombre(s) </label>
                             <asp:TextBox ID="Nom" CssClass="form-control" runat="server" > </asp:TextBox>
                            </div>  
                            <div class="form-group">
                                <label class="" for="AP">A. Paterno</label>
                                <asp:TextBox ID="AP" CssClass="form-control" runat="server" > </asp:TextBox>
                            </div>
                            <div class="form-group ji">
                                <label class="" for="AM">A. Materno</label>
                                <asp:TextBox ID="AM" CssClass="form-control" runat="server" > </asp:TextBox>
                            </div>
                            
                            
                            </div>
                            <br/>
                                </div>
                                <div class="bs-example">
                        <div class="form-inline" role="form">
                            
                            <div class="form-group">
                                <label class="" for="CURP">CURP</label>
                                <asp:TextBox ID="CURP" CssClass="form-control" runat="server"> </asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="  " for="edad">Edad</label>
                                <asp:TextBox ID="edad" CssClass="form-control" runat="server" > </asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="  " for="FNac">Fecha de Nacimiento</label>
                                <asp:TextBox ID="FNac" CssClass="form-control" runat="server" > </asp:TextBox>
                            </div>
                           
                            </div>
                            <br/>
                            
                                </div>
                                <div class="bs-example">
                                    <div class="form-inline" role="form">
                                        <div class="form-group">
                                            <label for="NSS">No Seguro Social</label>
                                            <asp:TextBox ID="NSS" CssClass="form-control" runat="server" > </asp:TextBox>
                                        </div>  
                                        <div class="form-group ">
                                            <label for="genero">Genero: </label>
                                            <select name="" id="genero" class="form-control  ">
                                                <option value="">...</option>
                                                <option value="">Masculino</option>
                                                <option value="">Femenino</option>
                                            </select>
                                        </div>
                                    </div>
                                    <br/>
                                    <div class="form-group">
                                        <asp:Button runat="server" CssClass="btn btn-primary" Text="Siguiente" OnClick="Unnamed2_Click"/>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="shadow" >
                            <div class="preview-box">
                                <div class="">
                                    <h1 class="">Crea tu Usuario</h1>
                                </div>
                                <div class="bs-example ">
                                    <div class="form-inline" role="form">
                                        <div class="form-group ">
                                            <label for="Usu">Usuario</label>
                                            <asp:TextBox ID="Usu" CssClass="form-control" runat="server"> </asp:TextBox>        
                                        </div>  
                                        <div class="form-group">
                                            <label class="" for="Contra">Contraseña</label>

                                            <asp:TextBox ID="Contra" CssClass="form-control" runat="server" > </asp:TextBox>
                                        </div>
                                    </div>
                                    <br/>
                                    <div class="form-group">
                                        <asp:Button runat="server" CssClass="btn btn-primary" Text="Siguiente"/>
                                    </div>
                                </div>
                            </div>
                        </div>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </form>
</asp:Content>
