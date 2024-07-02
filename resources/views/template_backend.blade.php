<!DOCTYPE html>
<html lang="en">

@include('partial._head')

    <body class="sb-nav-fixed">
        @include('partial._nav')
        <div id="layoutSidenav">
           @include('partial._sidebar')
            <div id="layoutSidenav_content">
                <main>
                  @yield('content')
                </main>
               @include('partial._footer')
            </div>
        </div>
       @include('partial._scripts')
    </body>
</html>
