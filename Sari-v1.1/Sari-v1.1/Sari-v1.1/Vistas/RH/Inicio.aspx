<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Sari_v1._1.Vistas.RH.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../../Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../Content/main.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <nav class="container">
          <div class="navbar navbar-default">
            <div class="navbar-header">
              <button class="navbar-toggle" data-toggle="collapse" data-target="#menu">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a href="#" class="navbar-brand">SARI</a>
            </div>
            <div class="collapse navbar-collapse" id="menu">
            <ul class="nav navbar-nav navbar">
                <li><a href="#">Entrar</a></li>
                <li><a href="Registro.aspx">Registarse</a></li>
                <li><a href="#">Help</a></li>
              </ul>
            </div>
            </div>
          
        </nav>  
        
      <div id="carousel-example-generic" class="c carousel slide" data-ride="carousel" data-interval="3500">
        <!-- Indicadores -->
        <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>
       
        <!-- Wrapper para slides -->
        <div class="carousel-inner">
          <div class="item active">
            <img src="../../img/1.jpg" alt="...">
            <div class="carousel-caption">
              <h3>Uno</h3>
            </div>
          </div>
          <div class="item">
            <img src="../../img/2.jpg" alt="...">
            <div class="carousel-caption">
              <h3>Dos</h3>
            </div>
          </div>
          <div class="item">
            <img src="../../img/3.jpg" alt="...">
            <div class="carousel-caption">
              <h3>Tres</h3>
            </div>
          </div>
        </div>
       
        <!-- Controles -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
      </div> <!--Fin Carousel -->


      <!--Footer-->
      <div id="wrap">
            <!-- Begin page content -->
            <div class="container">
              <div class="page-header">
                <h1>Sistema Adminisatrativo de Recursos Institucionales</h1>
              </div>
            </div>

            <div id="push"></div>
      </div>
      <div id="footer">
            <div class="container">
              <p class="muted credit">Políticas de la Institución @Copyright 2017</p>
            </div>
      </div>
</body>
    <script src="../../Scripts/bootstrap.min.js"></script>
</html>
