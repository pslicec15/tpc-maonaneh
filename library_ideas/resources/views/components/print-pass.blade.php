@include('partials.header')

<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed">
    <div class="container-fluid">
        <div class="row">
            <div class="col-4">
                <div class="library-pass" style="width: 3in; height: 5in; padding: 10px 10px;border: 1px solid black">
                    <div class="row header">
                        <img src="/dist/img/tpc_logo.png" alt="TPC Logo" style="width: 30px; height: 30px; margin-right: 5px" />
                        <p style="font-size:20px ">Talibon Polytechnic College</p>
                    </div>
                    <h4 class="mb-3 text-lg">LIBRARY PASS</h4>
                    <div>
                        @if (Route::is('print.pass.student'))
                            {!! QrCode::format('svg')->size(200)->generate($student->studentNo.'/student') !!}
                        @endif
                        @if (Route::is('print.pass.instructor'))
                            {!! QrCode::format('svg')->size(200)->generate($instructor->instructorNo.'/instructor') !!}
                        @endif
                    </div>
                    <div class="text-center mt-3">
                        @if (Route::is('print.pass.student'))
                            <h5>{{ $student->firstName }} {{ $student->lastName }}</h5>
                            <p>{{ $student->courseName }}</p>
                        @endif
                        @if (Route::is('print.pass.instructor'))
                            <h5>{{ $instructor->firstName }} {{ $instructor->lastName }}</h5>
                            <p>{{ $instructor->department }}</p>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ./wrapper -->
    <script>
        window.addEventListener("load", function() {
            setTimeout(function() {
                window.print();
            }, 1000); // Adjust the delay time if needed
        });
    </script>
    @include('partials.footer')
</body>
</html>
