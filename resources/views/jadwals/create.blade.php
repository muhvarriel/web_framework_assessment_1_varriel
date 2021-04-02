@extends('layouts.app')

@section('main')
<div class="row m-5">
 <div class="col-sm-8 offset-sm-2">
    <h1 class="display-5">Tambah Jadwal</h1>
  <div>
    @if ($errors->any())
      <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
              <li>{{ $error }}</li>
            @endforeach
        </ul>
      </div><br />
    @endif
      <form method="post" action="{{ route('jadwals.store') }}">
          @csrf
          <div class="form-group">    
              <label for="nama">Judul:</label>
              <input type="text" class="form-control" name="judul"/>
          </div>

          <div class="form-group">
              <label for="mahasiswa_id">Mahasiswa:</label>
              <input type="text" class="form-control" name="mahasiswa_id"/>

          </div>

          <div class="form-group">
              <label for="dosen_id">Dosen:</label>
              <input type="text" class="form-control" name="dosen_id"/>
          </div>
          <div class="form-group">
              <label for="deskripsi">Deskripsi:</label>
              <textarea class="form-control" name="deskripsi"></textarea>
          </div>
          <div class="form-group">
              <label for="awal">Awal:</label>
              <input type="datetime-local" class="form-control" name="awal"/>
          </div>
          <div class="form-group">
              <label for="akhir">Akhir:</label>
              <input type="datetime-local" class="form-control" name="akhir"/>
          </div>
          <button type="submit" class="btn btn-primary btn-m">Tambah Jadwal</button>
      </form>
  </div>
</div>
</div>
@endsection