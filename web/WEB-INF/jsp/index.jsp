<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
            
        
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Shopllantas</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Inicio <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="indexUsu.htm">usuario</a>
          <a class="dropdown-item" href="indexDetalle.htm">Detalle Pedido</a>
          <a class="dropdown-item" href="indexPro.htm">Proveedores</a>
          <a class="dropdown-item" href="indexPe.htm">Pedido</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
    </head>
    
    
    <body>
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block " src="./img/LogoP.png" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block " src="./img/logomichelin.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block" src="./img/BmWLogo.png" alt="Third slide">
    </div>
      <div class="carousel-item">
      <img class="d-block" src="./img/chevroletlogo.jpg" alt="four slide">
    </div>
      <div class="carousel-item">
      <img class="d-block" src="./img/goodyearlogo.png" alt="five slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
        
    <container>
        <a class="btn btn-primary mt-4 ml-5" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Nuestros Proveedores
            </a>
        <div class="row">
        <div class="col-3 ml-5 mt-4">
           <div class="card" style="width: 17rem;">
  <img src="./img/pir.jpg" class="card-img-top" alt="...">
  <div class="card-body">
      <p class="card-text">Origen: Italia <br> Ranking mundial de ventas: 5</p>
  </div>
</div>
        </div>
        
        <div class="col-3 ml-5 mt-4">
           <div class="card" style="width: 17rem;">
  <img src="./img/Michelin.jpg" class="card-img-top" alt="...">
  <div class="card-body">
      <p class="card-text">Origen: Francia <br> Ranking mundial de ventas: 2</p>
  </div>
</div>
        </div>
            <div class="col-3 ml-5 mt-4">
           <div class="card" style="width: 17rem;">
  <img src="./img/goodyearlogo.png" class="card-img-top" alt="...">
  <div class="card-body">
      <p class="card-text">Origen: Estados Unidos <br> Ranking mundial de ventas: 3</p>
  </div>
</div>
        </div> 
        </div>
        
        
       <div class="row">
        <div class="col-3 ml-5 mt-4">
           <div class="card" style="width: 17rem;">
  <img src="./img/kenda.png" class="card-img-top" alt="...">
  <div class="card-body">
      <p class="card-text">Origen: Taiwan <br> Ranking mundial de ventas: 28</p>
  </div>
</div>
        </div>
        
        <div class="col-3 ml-5 mt-4">
           <div class="card" style="width: 17rem;">
  <img src="./img/nitto.png" class="card-img-top" alt="...">
  <div class="card-body">
      <p class="card-text">Origen: Japón <br> Ranking mundial de ventas: 14 (como parte del grupo Toyo Tires)</p>
  </div>
</div>
        </div>
            <div class="col-3 ml-5 mt-4">
           <div class="card" style="width: 17rem;">
  <img src="./img/lanvigator.jpg" class="card-img-top" alt="...">
  <div class="card-body">
      <p class="card-text">Origen: China <br> Ranking mundial de ventas: Aún no ranqueda dentro de las 75 más grandes del mundo. </p>
  </div>
</div>
        </div> 
        </div>                       
       
         <div class="row">
        <div class="col-3 ml-5 mt-4">
           <div class="card" style="width: 17rem;">
  <img src="./img/maxxis.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Origen: Taiwan <br> Ranking mundial de ventas: 9 <br>Otras de sus marcas: Cheng Shin Tires (CST), Presa</p>
  </div>
</div>
  </div>       
</div>
        
    <a class="btn btn-primary mt-4 ml-5" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Los automoviles mas comunes
            </a>    
         <div class="row">
        <div class="col-3 ml-5 mt-4">
           <div class="card" style="width: 17rem;">
  <img src="./img/bmw.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Sus siglas significan "Bayerische Motoren Werke" (Fábrica Bávara de Motores)
        y su sede se encuentra en la ciudad alemana de Múnich.</p>
  </div>
</div>
        </div>
        
        <div class="col-3 ml-5 mt-4">
           <div class="card" style="width: 17rem;">
  <img src="./img/alpine.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Tras la Segunda Guerra Mundial nacía Alpine, un pequeño preparador
        de deportivos de carreras afincado en un taller de Dieppe, en Francia. Desde sus comienzos,
        Alpine trabajó en la construcción de deportivos de carreras basados en los modelos Renault de la época.</p>
  </div>
</div>
        </div>
            <div class="col-3 ml-5 mt-4">
           <div class="card" style="width: 17rem;">
  <img src="./img/audi.png" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Audi es una marca de coches premium, especializada
        en automóviles de lujo. Pertenece al Grupo Volkswagen.</p>
  </div>
</div>
        </div> 
        </div>
        
         <div class="row">
        <div class="col-3 ml-5 mt-4">
           <div class="card" style="width: 17rem;">
  <img src="./img/bentley.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Bentley es un fabricante de vehículos
        de lujo fundado en Gran Bretaña, el 18 de enero de 1919 por Walter Owen Bentley</p>
  </div>
</div>
        </div>
        
        <div class="col-3 ml-5 mt-4">
           <div class="card" style="width: 17rem;">
  <img src="./img/bugatti.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Bugatti es una firma de superdeportivos 
        y coches de lujo que pertenece actualmente al grupo Volkswagen. Fue creada por Ettore Bugatti</p>
  </div>
</div>
        </div>
            <div class="col-3 ml-5 mt-4">
           <div class="card" style="width: 17rem;">
  <img src="./img/honda.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Honda es un fabricante japonés de automóviles, motocicletas y aviones. Fue fundada tras
        la Segunda Guerra Mundial, en 1946, por Soichiro Honda - de ahí su nombre.</p>
  </div>
</div>
        </div> 
        </div>
        
         <div class="row">
        <div class="col-3 ml-5 mt-4">
           <div class="card" style="width: 17rem;">
  <img src="./img/hyundai.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Hyundai es un fabricante surcoreano de automóviles, fundado en 1967. Es un fabricante
        generalista, que forma parte del grupo automovilístico Hyundai Motor Group, junto con Kia y Genesis</p>
  </div>
</div>
        </div>
        
        <div class="col-3 ml-5 mt-4">
           <div class="card" style="width: 17rem;">
  <img src="./img/ford.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Ford es un fabricante estadounidense de automóviles. Sería muy difícil entender la 
        historia del automóvil tal y como la conocemos ahora sin el fabricante de Detroit y su fundador, Henry Ford.</p>
  </div>
</div>
        </div>
            <div class="col-3 ml-5 mt-4">
           <div class="card" style="width: 17rem;">
  <img src="./img/mazda.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Mazda es a día de hoy uno de los fabricantes más respetados y conocidos de Japón. 
        Una marca que nacía en 1920 en Hiroshima, antes de la Segunda Guerra Mundial</p>
  </div>
</div>
        </div> 
        </div>
        
         <div class="row">
        <div class="col-3 ml-5 mt-4">
           <div class="card" style="width: 17rem;">
  <img src="./img/mercedesbenz.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">La marca de coches Mercedes-Benz es una de las firmas automovilísticas más importantes del mundo</p>
  </div>
</div>
        </div>
        
        <div class="col-3 ml-5 mt-4">
           <div class="card" style="width: 17rem;">
  <img src="./img/maserati.png" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Maserati es, sin duda, uno de los mejores referentes del coche deportivo y de lujo italiano.</p>
  </div>
</div>
        </div>
            <div class="col-3 ml-5 mt-4">
           <div class="card" style="width: 17rem;">
  <img src="./img/lexus.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Lexus es la marca premium, del fabricante japonés Toyota. Su estrategia comercial 
        es similar a la de Infiniti para Nissan</p>
  </div>
</div>
        </div> 
        </div>
    </container>
       
            
        
           
        
        
        
    <script src="bootstrap/js/jquery.js" type="text/javascript"></script>
    <script src="bootstrap/js/jquery-3.2.1.slim.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/popper.min.js" type="text/javascript"></script>
      
        
        
    </body>
</html>