<?php
  function setActiveNavbarMenu($requestUrl)
  {
    if( $requestUrl == explode('?', $_SERVER["REQUEST_URI"])[0] ) :
      echo ' active';
    endif;
  }
?>

  <nav class="navbar navbar-expand-lg navbar-light bg-light shadow">
    <div class="container">
      <a class="logo" href="index.php">SeleraKita.</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link <?php setActiveNavbarMenu('index.php'); ?>" href="index.php">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link <?php setActiveNavbarMenu('tambah.php'); ?>" href="tambah.php">Buat Resep</a>
          </li>
            
          <?php if( !is_login() ) : ?>
          <li class="nav-item mx-2">
            <a class="btn btn-success py-1 my-1 px-3 rounded-pill" href="login.php">Login</a>
          </li>
          <li class="nav-item me-2">
            <a class="btn btn-success py-1 my-1 px-3 rounded-pill" href="register.php">Register</a>
          </li>
          <?php else : ?>
            <li class="nav-item">
            <a class="nav-link <?php setActiveNavbarMenu('crud.php'); ?>" href="crud.php">Edit Resep</a>
          </li>
          <li class="nav-item">
            <a class="btn btn-danger py-1 my-1 px-3 rounded-pill" href="logout.php">Logout</a>
          </li>
          <?php endif; ?>
        </ul>
      </div>
    </div>
  </nav>
  