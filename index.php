<?php
include "koneksi.php";
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Aplikasi Apotik</title>
	<link rel="stylesheet" type="text/css" href="resources/css/style.css"> 
</head>
<body>

	<section class="header">
		<div class="container">
			<div class="row">
				<div class="col-6"> 
					<div class="header_title">Apotek k24</div>
				</div>
				<div class="col-6">
					<form action="?page=pencarian_obat" method="post">
						<input type="text" name="nama_barang" placeholder="pencarian data obat....." class="header_pencarian_input">
						<input type="submit" name="Cari" value="Cari" class="header_pencarian_button">
					</form>
				</div>
			</div>
		</div>
	</section>

	<section class="menu_atas">
		<div class="container">
			<a href="./" class="menu_atas_link">Beranda</a>
			<a href="?page=kategori" class="menu_atas_link">Kategori Obat</a>
			<a href="?page=informasi" class="menu_atas_link">Informasi Apotik</a>
			<a href="?page=kontak" class="menu_atas_link">Hubungi Kami</a>
		</div>
	</section>

	<div class="konten">
		<div class="container">
			<div class="konten_data">
				<?php
					$page = isset($_GET['page']) ? mysqli_real_escape_string($koneksi, $_GET['page']) : 'home';

					if ($page == "home") {
						include "page/home.php";
					} elseif ($page == "detail_obat") {
						include "page/detail_obat.php";
					} elseif ($page == "pencarian_obat") {
						include "page/pencarian_obat.php";	
					} elseif ($page == "kategori") {
						include "page/kategori.php";
					} elseif ($page == "informasi") {
						include "page/informasi.php";
					} elseif ($page == "kontak") {
						include "page/kontak.php";
					} else {
						include "page/home.php";
					}
				?>
			</div>
		</div>
	</div>

</body>
</html>
