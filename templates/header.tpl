<!DOCTYPE html>
<html lang="en">
<head>
    <base href= "{BASE_URL}" />
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Be Gaming</title>
    <link rel="stylesheet" type="text/css" href="css/estilo.css">   
</head>
<body>
 <header>
        <div class="logo">
            <div class="imgLogo-nombreLogo">
                <img src="imagen/logo.png" alt="logo" class="logo-img">
                <h1 class="nombre-empresa">Be Gaming</h1> 
            </div>  
            <div class="btn-menu">
                <i class="fas fa-bars"></i>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
                <script src="https://kit.fontawesome.com/7e5b2d153f.js" crossorigin="anonymous"></script>
            </div>
        </div>
        <nav class="menu">
            <ul class="navegacion">
                <li><a href="home">Inicio</a></li>
                <li><a href="productos">Productos</a></li>
                        
            </ul>
        </nav>
   

        {if isset($smarty.session.email)}
          <a class="btn btn-danger" href="logout"> logout</a>
          <a class="btn btn-warning" href="admin"> ADMIN</a>  
            
        {else}
            <a href="login" class="btn btn-success">login</a>
        {/if} 
     
 </header>
    
         
      
   