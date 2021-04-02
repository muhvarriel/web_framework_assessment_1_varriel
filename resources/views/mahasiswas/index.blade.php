@extends('layouts.app')

@section('main')
<div class="row">
<div class="col-sm-12 p-5">
    <h1 class="display-5">Detail Mahasiswa</h1>    
  <table class="table table-striped">
    <thead>
        <tr>
          <td>ID</td>
          <td>Nama</td>
          <td>NIM</td>
          <td>Tanggal Lahir</td>
          <td>Alamat</td>
          <td>Tahun Masuk</td>
        </tr>
    </thead>
    <tbody>
        @foreach($mahasiswas as $mahasiswa)
        <tr>
            <td>{{++$i}}</td>
            <td>{{$mahasiswa->nama}}</td>
            <td>{{$mahasiswa->nim}}</td>
            <td>{{$mahasiswa->tanggal_lahir}}</td>
            <td>{{$mahasiswa->alamat}}</td>
            <td>{{$mahasiswa->tahun_masuk}}</td>
        </tr>
        @endforeach
    </tbody>
  </table>
  <div class="col-sm-12">

  @if(session()->get('success'))
    <div class="alert alert-success">
      {{ session()->get('success') }}  
    </div>
  @endif
</div>
<div>
</div>
@endsection