<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

  <!-- Bootstrap core CSS -->
  <link href="{{ url('frontend/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="{{ url('frontend/css/business-frontpage.css') }}" rel="stylesheet">

    <!-- CSS Laravel -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">

</head>

<body>
    <div id="app">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    {{ config('app.name', 'Laravel') }}
                </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="/mahasiswas">Mahasiswa
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/dosens">Dosen</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/jadwals">Jadwal</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

<!-- Header -->
<header class="bg-primary py-5 mb-5">
  <div class="container h-100">
    <div class="row h-100 align-items-center">
      <div class="col-lg-12">
        <h1 class="display-5 text-white mt-5 mb-2">Sistem Appointment</h1>
        <p class="lead mb-5 text-white-50">Sistem Penjadwalan Bimbingan Mahasiswa dan Dosen sederhana menggunakan Laravel 8.0</p>
      </div>
    </div>
  </div>
</header>

        <main class="py-4">
            @yield('main')
        </main>
    </div>

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="{{ url('frontend/vendor/jquery/jquery.min.js') }}"></script>
  <script src="{{ url('frontend/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>

</body>
</html>
