$(function() {

    $('.tombolModalUbah').on('click', function (){

      $('#formModalLabel').html('Tambah Data Mahasiswa');
      $('.modal-footer button[type=submit]').html('Tambah Data');

    });

    $('.tampilModalUbah').on('click', function (){

      $('#formModalLabel').html('Ubah Data Mahasiswa');
      $('.modal-footer button[type=submit]').html('Ubah Data');
      $('.modal-body form').attr('action', 'http://localhost/phpmvc/public/mahasiswa/ubah');

      const id = $(this).data('id');

      $.ajax({
        url: 'http://localhost/phpmvc/public/mahasiswa/getubah',
        data: {id : id},
        method: 'post',
        dataType: 'json',
        success: function(data) {
          $('#nama').val(data.nama);
          $('#npm').val(data.npm);
          $('#email').val(data.email);
          $('#jurusan').val(data.jurusan);
          $('#id').val(data.id);

        }
      });

    });

    $('.tombolTambahData').on('click', function() {
      $('#formModalLabel').html('Tambah Data Mahasiswa');
      $('.modal-footer button[type=submit]').html('Tambah Data');
      $('#nama').val('');
      $('#npm').val('');
      $('#email').val('');
      $('#jurusan').val('');
      $('#id').val('');
    });

});
