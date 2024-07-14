<h1>Obat terbaru</h1>

<div class="row">
    <?php
    $home_produk = mysqli_query($koneksi, "SELECT DISTINCT nama_barang, kdbarang, gambar, deskripsi_singkat, harga_user FROM barang ORDER BY kdbarang DESC LIMIT 0,6");
    while ($home_produk_tampil = mysqli_fetch_array($home_produk)) {
        ?>
        <div class="col-3">
            <div class="produk_kotak">
                <img src="resources/image/produk/<?php echo $home_produk_tampil['gambar']; ?>" width="100%">
                <a href="?page=detail_obat&&kdbarang=<?php echo $home_produk_tampil['kdbarang']; ?>">
                    <div class="produk_judul"><?php echo $home_produk_tampil['nama_barang']; ?></div>
                </a>
            </div>
            <div class="produk_deskripsi"><?php echo $home_produk_tampil['deskripsi_singkat']; ?>....</div>
            <div class="produk_harga">Rp. <?php echo number_format($home_produk_tampil['harga_user'], 0, ',', '.'); ?></div>
        </div>
    <?php
    }
    ?>
</div>
