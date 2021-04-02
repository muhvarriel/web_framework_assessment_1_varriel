@extends('layouts.app')

@section('main')
<div class="row">
<div class="col-sm-12 p-5">
    <h1 class="display-5">Detail Dosen</h1>    
  <table class="table table-striped">
    <thead>
        <tr>
          <td>ID</td>
          <td>Nama</td>
          <td>NIDN</td>
          <td>Alamat</td>
          <td>Kontak</td>
        </tr>
    </thead>
    <tbody>
        @foreach($dosens as $dosen)
        <tr>
            <td>{{++$i}}</td>
            <td>{{$dosen->nama}}</td>
            <td>{{$dosen->nidn}}</td>
            <td>{{$dosen->alamat}}</td>
            <td>{{$dosen->kontak}}</td>
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