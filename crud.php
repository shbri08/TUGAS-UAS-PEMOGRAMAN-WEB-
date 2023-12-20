<?php
require_once 'config.php';

$recipes = getAllRecipes();
$no = 1;

include_once 'header.php';
include_once 'navbar.php';
?>

<center><h3>Resep Masakan Anda</h3></center>
<br/>
<table>
    <thead>
        <tr>
            <th>No</th>
            <th>Nama Masakan</th>
            <th>Bahan</th>
            <th>Langkah</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        <?php
        // Menggunakan variabel $recipes yang telah diperoleh sebelumnya
        foreach ($recipes as $recipe) {
        ?>
        <tr>
            <td><?php echo $no; ?></td>
            <td><?php echo $recipe['title']; ?></td>
            <td><?php echo $recipe['materials']; ?></td>
            <td><?php echo $recipe['procedures']; ?></td>
            <td>
                <!-- Menggunakan $recipe['id'] bukan $recipe['id'] -->
                <a href="ubah-resep.php?id=<?= $recipe['id'] ?>" class="btn btn-sm btn-success">Ubah</a>
                <a href="hapus-resep.php?id=<?= $recipe['id'] ?>" class="btn btn-sm btn-danger">Hapus</a>
            </td>
        </tr>
        <?php
            $no++;
        }
        ?>
    </tbody>
</table>

<?php include_once 'footer.php'; ?>
