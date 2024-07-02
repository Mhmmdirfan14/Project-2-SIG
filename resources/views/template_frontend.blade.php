<!doctype html>
<html lang="en">

@include('partials._head')
  
  <body style="background-color: #FFF9F4;">

    @include('partials._navbar')

    <main>
        @yield('content')
    </main>
    
    @include('partials._footer')

    @include('partials._scripts')
  </body>
</html>