<h3>Pencarian obat</h3>
 
 <?php
    $nama_barang=mysqli_real_escape_string($koneksi,@$_POST['nama_barang']);
    $home_produk = mysqli_query($koneksi, "SELECT * FROM barang WHERE nama_barang LIKE '%$nama_barang%' ORDER BY kdbarang DESC ");
    $cekproduk=mysqli_num_rows($home_produk);
    if($cekproduk==0){
        echo "<h3 style='color:red'>Maaf!! Data Yang anda cari tidak di temukan</h3>";
    }
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