<?php
include 'header.php';
?>

<div class="container">

	<div class="row">
		<div class="col-md-6 mx-auto">
			<div class="card mb-5">
				<div class="card-body">

					<h3>Edit Warga</h3>
					<p class="text-muted">Edit Data Warga</p>

					<hr>

					<a class="btn btn-primary btn-sm mb-5" href="warga.php">Kembali</a>

					<?php

					$id = $_GET['id'];
					$warga = mysqli_query($koneksi,"SELECT * FROM warga WHERE warga_id='$id'");
					while($w = mysqli_fetch_array($warga)){
					?>

					<form action="warga_update.php" method="post">

						<div class="form-group">
							<label>Nama</label>
							<input type="text" name="nama" class="form-control" required="required" value="<?php echo $w['warga_nama'] ?>">
							<input type="hidden" name="id" value="<?php echo $w['warga_id'] ?>">
						</div>

						<div class="form-group">
							<label>No.KTP</label>
							<input type="number" name="ktp" class="form-control" required="required" value="<?php echo $w['warga_ktp']; ?>">
						</div>

						<div class="form-group">
							<label>Jenis Kelamin</label>
							<select name="jk" class="form-control" required="required">
								<option value=""> - Pilih - </option>
								<option <?php if($w['warga_jk']=="Laki-laki"){echo "Selected='selected'";} ?> value="Laki-laki">Laki-laki</option>
								<option <?php if($w['warga_jk']=="Perempuan"){echo "Selected='selected'";} ?> value="Perempuan">Perempuan</option>
							</select>
						</div>

						<div class="form-group">
							<label>Desa</label>
							<select name="desa" class="form-control" required="required">
								<option value=""> - Pilih - </option>
								<?php
								$desa = mysqli_query($koneksi,"SELECT * FROM desa");
								while($d = mysqli_fetch_array($desa)){
									?>
									<option <?php if($w['warga_desa']==$d['desa_id']){echo "selected='selected'";} ?> value="<?php echo $d['desa_id']; ?>"><?php echo $d['desa_nama']; ?></option>
									<?php
								}
								?>
							</select>
						</div>

						<div class="form-group">
							<label>Dusun</label>
							<select name="dusun" class="form-control" required="required">
								<option value=""> - Pilih - </option>
								<?php
								$dusun = mysqli_query($koneksi,"SELECT * FROM dusun");
								while($dus = mysqli_fetch_array($dusun)){
									?>
									<option <?php if($w['warga_dusun']==$dus['dusun_id']){echo "selected='selected'";} ?> value="<?php echo $dus['dusun_id']; ?>"><?php echo $dus['dusun_nama']; ?></option>
									<?php
								}
								?>
							</select>
						</div>

						<div class="form-group">
							<label>RT</label>
							<input type="text" name="rt" class="form-control" value="<?php echo $w['warga_rt']; ?>">
						</div>

						<div class="form-group">
							<label>RW</label>
							<input type="text" name="rw" class="form-control" value="<?php echo $w['warga_rw']; ?>">
						</div>

						<div class="form-group">
							<label>Status</label>
							<select name="status" class="form-control" required="required">
								<option value="">- Pilih -</option>
								<option <?php if($w['warga_status']=="Kawin"){echo "selected='selected'";} ?> value="Kawin">Kawin</option>
								<option <?php if($w['warga_status']=="Belum Kawin"){echo "selected='selected'";} ?> value="Belum Kawin">Belum Kawin</option>
							</select>
						</div>

						<div class="form-group">
							<label>Pendidikan</label>
							<select name="pendidikan" class="form-control" required="required">
								<option value="">- Pilih -</option>
								<option <?php if($w['warga_pendidikan']=="SD"){echo "selected='selected'";} ?> value="SD">SD</option>
								<option <?php if($w['warga_pendidikan']=="SMP"){echo "selected='selected'";} ?> value="SMP">SMP</option>
								<option <?php if($w['warga_pendidikan']=="SMA"){echo "selected='selected'";} ?> value="SMA">SMA</option>
								<option <?php if($w['warga_pendidikan']=="S1"){echo "selected='selected'";} ?> value="S1">S1</option>
								<option <?php if($w['warga_pendidikan']=="S2"){echo "selected='selected'";} ?> value="S2">S2</option>
								<option <?php if($w['warga_pendidikan']=="S3"){echo "selected='selected'";} ?>value="S3">S3</option>
							</select>
						</div>

						<div class="form-group">
							<label>Agama</label>
							<select name="agama" class="form-control" required="required">
								<option value="">- Pilih -</option>
								<option <?php if($w['warga_agama']=="Islam"){echo "selected='selected'";} ?> value="Islam">Islam</option>
								<option <?php if($w['warga_agama']=="Kristen"){echo "selected='selected'";} ?> value="Kristen">Kristen</option>
								<option <?php if($w['warga_agama']=="Budha"){echo "selected='selected'";} ?> value="Budha">Budha</option>
								<option <?php if($w['warga_agama']=="Hindu"){echo "selected='selected'";} ?> value="Hindu">Hindu</option>
							</select>
						</div>

						<input type="submit" name="submit" value="Simpan" class="btn btn-primary btn-sm">

					</form>
					<?php
					}
					?>

				</div>
			</div>
		</div>
	</div>

</div>

<?php
include 'footer.php';
?>