<h3>Detail Obat</h3>

<?php
    $kdbarang = mysqli_real_escape_string($koneksi, @$_GET['kdbarang']); 
    $barang = mysqli_query($koneksi, "SELECT * FROM barang a LEFT JOIN kategori_barang b ON a.kdkategori=b.kdkategori WHERE a.kdbarang='$kdbarang'");
    $cekdata = mysqli_num_rows($barang);
    
    // Menggunakan $cekdata untuk memeriksa apakah data ditemukan atau tidak
    if ($cekdata == 0) {
        echo "<h3 style='color:red'>Maaf!! Data yang Anda cari tidak ditemukan</h3>";
    } else {
        $tampildata = mysqli_fetch_array($barang); // Mengambil data hasil query ke dalam array
?>
<div class="row">
    <div class="col-6">
        <!-- Menampilkan gambar dari $tampildata['gambar'] -->
        <img src="resources/image/produk/<?php echo $tampildata['gambar']; ?>" width="100%">
    </div> 
    <div class="col-6">
        <div class="row">
            <label class="col-4">Nama Barang</label>
            <div class="col-8 produk_judul"><?php echo $tampildata['nama_barang'];?></div>
        </div>
        <div class="row">
            <label class="col-4">Kategori Barang</label>
            <div class="col-8"><?php echo $tampildata['nama_kategori'];?></div>
        </div>
        <div class="row">
            <label class="col-4">Deskripsi Singkat</label>
            <div class="col-8 produk_deskripsi"><?php echo $tampildata['deskripsi_singkat']; ?></div>
        </div>
        <div class="row">
            <label class="col-4">Tanggal Expired</label>
            <div class="col-8 produk_deskripsi"><?php echo $tampildata['tanggal_expired']; ?></div>
        </div>
        <div class="row">
            <label class="col-4">Kode Barcode</label>
            <div class="col-8 produk_deskripsi"><?php echo $tampildata['barcode']; ?></div>
        </div>
        <div class="row">
            <label class="col-4">Harga User</label>
            <div class="col-8 produk_harga">Rp. <?php echo number_format($tampildata['harga_user'], 0, ',', '.'); ?></div>
        </div>
    </div>
</div>

<a href="./">KEMBALI</a>

<?php
    }
?>
