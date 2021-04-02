@extends('layouts.app')

@section('main')
<div class="row m-5">
 <div class="col-sm-8 offset-sm-2">
    <h1 class="display-5">Edit Jadwal</h1>
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
        <form method="post" action="{{ route('jadwals.update', $jadwal->id) }}">
            @method('PATCH') 
          @csrf
          <div class="form-group">    
              <label for="nama">Judul:</label>
                <input type="text" class="form-control" name="judul" value={{ $jadwal->judul }} />
          </div>

          <div class="form-group">
              <label for="mahasiswa_id">Mahasiswa:</label>
                <input type="text" class="form-control" name="mahasiswa_id" value={{ $jadwal->mahasiswa_id }} />
          </div>

          <div class="form-group">
              <label for="mahasiswa_id">Dosen:</label>
                <input type="text" class="form-control" name="dosen_id" value={{ $jadwal->dosen_id }} />
          </div>
          <div class="form-group">
              <label for="deskripsi">Deskripsi:</label>
              <textarea class="form-control" name="deskripsi">{{ $jadwal->deskripsi }}</textarea>
          </div>
          <div class="form-group">
              <label for="awal">Awal:</label>
              <input type="datetime-local" class="form-control" name="awal" value={{ $jadwal->awal }}/>
          </div>
          <div class="form-group">
              <label for="akhir">Akhir:</label>
              <input type="datetime-local" class="form-control" name="akhir" value={{ $jadwal->akhir }}/>
          </div>
          <button type="submit" class="btn btn-primary btn-m">Edit Jadwal</button>
      </form>
  </div>
</div>
</div>
@endsection