<div class="container mt-3">
  <!-- flash message -->
  <div class="row">
    <div class="col-lg-6">
      <?php Flasher::flash(); ?>
    </div>
  </div>

<div class="row mb-3">
  <div class="col-lg-6">
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary tombolTambahData" data-toggle="modal" data-target="#formModal">
      Tambah Data Buku
    </button>
  </div>
</div>

  <div class="row">
    <div class="col-lg-6">

      <h3>Daftar Buku</h3>
      <ul class="list-group">
        <?php foreach ( $data['buku'] as $mhs ) : ?>
          <li class="list-group-item">
            <?= $mhs['nama']; ?>
            <a href="<?= BASEURL; ?>/buku/detail/<?= $mhs['id']; ?>" 
            class="badge badge-primary float-right ml-1">detail</a>
          </li>
        <?php endforeach; ?>
      </ul>
    </div>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="formModal" tabindex="-1" role="dialog" aria-labelledby="formModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="formModalLabel">Tambah Data Mahasiswa</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

        <form class="" action="<?= BASEURL; ?>/mahasiswa/tambah" method="post">
          <input type="hidden" name="id" id="id">
          <div class="form-group">
            <label for="nama">Nama</label>
            <input type="text" class="form-control" id="nama" name="nama">
          </div>

          <div class="form-group">
            <label for="category">Category</label>
            <input type="text" class="form-control" id="category" name="category">
          </div>

          <div class="form-group">
            <label for="writer">Writer</label>
            <input type="text" class="form-control" id="writer" name="writer">
          </div>

          <div class="form-group">
            <label for="year">Publication Year</label>
            <input type="text" class="form-control" id="year" name="year">
          </div>
          
          <div class="form-group">
            <label for="img">Image</label>
            <input type="text" class="form-control" id="img" name="img">
          </div>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Tambah Data</button>
        </form>

      </div>
    </div>
  </div>
</div>
