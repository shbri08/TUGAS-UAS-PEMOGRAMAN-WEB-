<?php
  require_once 'config.php';
  $recipe = getDetailRecipe();

  include_once 'header.php';
  include_once 'navbar.php';
?>

<div class="container my-5">
  <div class="kotakresep">
      <!-- content -->
      <img class="w-200 rounded" style="object-fit: cover; height: 400px; margin-left : auto; margin-right: auto; display: block" src="<?= $recipe->thumbnail ?>" alt="<?= $recipe->title ?>">
      <h1 class="my-3 text-center"><?= $recipe->title ?></h1>
      <?php if( is_login() ): ?>
        <div class="text-center">
          <a href="ubah-resep.php?id=<?= $recipe->id ?>" class="btn btn-sm btn-success">Ubah</a>
          <a href="hapus-resep.php?id=<?= $recipe->id ?>" class="btn btn-sm btn-danger">Hapus</a>
        </div>
      <?php endif; ?>
      <h4 class="mt-3">Bahan-bahan</h4>
      <?= $recipe->materials ?>
      <h4 class="mt-3">Cara Pembuatan</h4>
      <?= $recipe->procedures ?>
      <!-- end content -->
    </div>
  </div>
</div>


<?php include_once 'footer.php'; ?>