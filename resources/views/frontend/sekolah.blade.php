@extends('template_frontend')
    @section('content')

    <div class="container mt-5"> 
        <div class="row">
          @foreach ($sekolahs as $sekolah )
            <div class="col-12 col-md-6">
              <div class="card mt-2">
                <div class="card-body">
                  <h4 class="card-title">{{ $sekolah['nama'] }}</h4><hr>
                  <p><b>Alamat: </b> {{ $sekolah['alamat'] }} </p>
                  <p><b>Kelurahan: </b> {{ $sekolah['kelurahan'] }}</p>
                  <div class="mt-4">
                    <a href="{{ $sekolah['detail'] }}" class="btn btn-warning">Detail</a>
                  </div>
                
                </div>
              </div>
            </div>
          @endforeach
        </div>
    </div>
 
@endsection
