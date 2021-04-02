@extends('layouts.app')

@section('main')
<div class="row">
<div class="col-sm-12 p-5">
    <h1 class="display-5">Detail Jadwal</h1>    
  <table class="table table-striped">
    <thead>
        <tr>
          <td>ID</td>
          <td>Judul</td>
          <td>Mahasiswa</td>
          <td>Dosen</td>
          <td>Deskripsi</td>
          <td>Awal</td>
          <td>Akhir</td>
            <th colspan="2" class="table-active">Action</th>
        </tr>
    </thead>
    <tbody>
        @foreach($jadwals as $jadwal)
        <tr>
            <td>{{++$i}}</td>
            <td>{{$jadwal->judul}}</td>
            <td>{{$jadwal->mahasiswa_id}}</td>
            <td>{{$jadwal->dosen_id}}</td>
            <td>{{$jadwal->deskripsi}}</td>
            <td>{{$jadwal->awal}}</td>
            <td>{{$jadwal->akhir}}</td>

            <td class="text-center">
                <form action="{{ route('jadwals.destroy',$jadwal->id) }}" method="POST">
 
                    <a href="{{ route('jadwals.edit',$jadwal->id) }}"><button type="button" class="btn btn-primary btn-sm px-3 m-3">Edit</button></a>
 
                    @csrf
                    @method('DELETE')
 
                    <button type="submit" class="btn btn-danger btn-sm px-3 m-3" onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')">Delete</button>
                </form>
            </td>

        </tr>
        @endforeach
    </tbody>
  </table>

  {!! $jadwals->links() !!}

  <div class="col-sm-12">

  @if(session()->get('success'))
    <div class="alert alert-success">
      {{ session()->get('success') }}  
    </div>
  @endif

  <a class="btn btn-primary btn-m" href="{{ route('jadwals.create') }}">Tambah Jadwal +</a>
</div>
<div>
</div>
@endsection