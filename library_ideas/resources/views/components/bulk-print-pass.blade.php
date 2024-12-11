@include('partials.header')

<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed">
    <div class="container-fluid">
        <div class="row">
            @if ($selectedStudents)
                @foreach ($selectedStudents as $selectedStudent)
                    <div class="col-4">
                        <div class="library-pass"
                            style="width: 3in; height: 5in; padding: 10px 10px;border: 1px solid black">
                            <div class="row header">
                                <img src="/dist/img/tpc_logo.png" alt="TPC Logo"
                                    style="width: 30px; height: 30px; margin-right: 5px" />
                                <p style="font-size:20px ">Talibon Polytechnic College</p>
                            </div>
                            <h4 class="mb-3 text-lg">LIBRARY PASS</h4>
                            <div>
                                {!! QrCode::format('svg')->size(200)->generate($selectedStudent->studentNo . '/student') !!}
                            </div>
                            <div class="text-center mt-3">
                                <h5>{{ $selectedStudent->firstName }} {{ $selectedStudent->lastName }}</h5>
                                <p>{{ $selectedStudent->course }}</p>
                            </div>
                        </div>
                    </div>
                @endforeach
            @endif
            
            @if ($selectedInstructors)
                @foreach ($selectedInstructors as $selectedInstructor)
                    <div class="col-4">
                        <div class="library-pass"
                            style="width: 3in; height: 5in; padding: 10px 10px;border: 1px solid black">
                            <div class="row header">
                                <img src="/dist/img/tpc_logo.png" alt="TPC Logo"
                                    style="width: 30px; height: 30px; margin-right: 5px" />
                                <p style="font-size:20px ">Talibon Polytechnic College</p>
                            </div>
                            <h4 class="mb-3 text-lg">LIBRARY PASS</h4>
                            <div>
                                {!! QrCode::format('svg')->size(200)->generate($selectedInstructor->instructorNo . '/instructor') !!}
                            </div>
                            <div class="text-center mt-3">
                                <h5>{{ $selectedInstructor->firstName }} {{ $selectedInstructor->lastName }}
                                </h5>
                                <p>{{ $selectedInstructor->department }}</p>
                            </div>
                        </div>
                    </div>
                @endforeach
            @endif
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
