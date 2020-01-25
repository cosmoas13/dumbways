<div class="container mt-5">

  <div class="card" style="width: 18rem;">
    <div class="card-body">
      <h5 class="card-title"><?= $data['books']['nama']; ?></h5>
      <h6 class="card-subtitle mb-2 text-muted"><?= $data['books']['npm']; ?></h6>
      <p class="card-text"><?= $data['books']['email']; ?></p>
      <p class="card-text"><?= $data['books']['jurusan']; ?></p>
      <a href="<?= BASEURL; ?>/buku" class="card-link">Kembali</a>
    </div>
  </div>

</div>
