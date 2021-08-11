<?php
include 'header.php';
?>


<div class="container">

	<div class="row">
		<div class="col-md-8 mx-auto">
			<div class="card">
				<div class="card-body">

					<h3>Data Dusun</h3>
					<p class="text-muted">Semua Data Dusun</p>

					<hr>

					<a href="dusun_tambah.php" class="btn btn-primary btn-sm mb-3"><i class="fa fa-plus"></i> Tambah Dusun Baru</a>

					<table class="table table-bordered table-striped table-hover table-saya">
						<thead>
							<tr>
								<th width="1%">No</th>
								<th>Nama Dusun</th>
								<th width="20%">Opsi</th>
							</tr>
						</thead>

						<tbody>
							<?php
							$no = 1;
							$dusun = mysqli_query($koneksi,"SELECT * FROM dusun");
							while($d = mysqli_fetch_array($dusun)){
								?>
								<tr>
									<td><?php echo $no++ ?></td>
									<td><?php echo $d['dusun_nama']; ?></td>
									<td>
										<a href="dusun_edit.php?id=<?php echo $d['dusun_id']; ?>" class="btn btn-warning text-white btn-sm"><i class="fa fa-wrench"></i></a>
										<a href="dusun_hapus.php?id=<?php echo $d['dusun_id']; ?>" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>
									</td>
								</tr>
								<?php 
							}
							?>
						</tbody>
					</table>

				</div>
			</div>
		</div>
	</div>

</div>

<?php
include 'footer.php';
?>