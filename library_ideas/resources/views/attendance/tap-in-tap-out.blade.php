@include('partials.header')

<body class="hold-transition login-page ">
    <div class="container-fluid align-items-center justify-content-center">
        <div class="row align-items-center justify-content-center">
            <div class="col col-4 p-4 mt-5">
                <div class="card card-outline card-success" style="height: 100%">
                    <div class="card-header">
                        <div class="row">
                            <div class="col-4">
                                <img src="dist/img/tpc_logo.png" style="width: 80px" alt="TPC Logo">
                            </div>
                            <div class="col-8 pt-3">
                                <p class="text-md font-weight-bold"><span class="font-weight-light text-sm">Talibon
                                        Polytechnic
                                        College</span><br>Library Management System</p>
                            </div>
                        </div>
                    </div>
                    <div class="card-body p-4 mt-2">
                        <p class="text-center">Please tap your library pass to the QR code scanner</p>
                        <form action="/tap-in-tap-out/save" method="get">
                            @csrf
                            <input type="password" name="barcode_data" id="barcode_data" autofocus
                                class="form-control text-center">
                            <button type="submit" hidden>Submit</button>
                        </form>

                        <div class="mt-5">
                            <p class="text-bold" style="font-size: 12px">Instructions:</p>
                            <ol>
                                <li style="font-size: 12px">Please make sure that you hear a beep sound to confirm that
                                    the QR code was recognized by the scanner.</li>
                                <li style="font-size: 12px">A notification screen will pop up to verify if you
                                    successfully timed in or timed out.</li>
                                <li style="font-size: 12px">Please double check the data displayed. If there are
                                    inconsistencies or error encountered, please inform the librarian or the assistant
                                    librarian immediately.</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>

            <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-default"
                id="displayAttendance" hidden>
                Launch Default Modal
            </button>
            <div class="modal fade" id="modal-default">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title text-center">Attendance</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"
                                id="close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            @if (request()->isMethod('get'))
                                @if (session('attendance'))
                                    @if (session('student') == 1)
                                        <div class="text-center">
                                            <img class="profile-user-img img-fluid img-circle"
                                                src="{{ !empty(session('attendance')->photo) ? '/img/student/' . session('attendance')->studentNo . '.png' : '/dist/img/avatar.png' }}"
                                                alt="student">
                                        </div>
                                        <p class="text-center bold" style="font-size: 20px">
                                            {{ session('attendance')->firstName }} {{ session('attendance')->lastName }}
                                        </p>
                                        <p class="text-center">{{ session('attendance')->studentNo }}</p>
                                        <p class="text-center">
                                            Timed in:
                                            <span class="text-success bold mr-3" id="timedInDisplay">
                                                --:--
                                            </span>
                                            Timed out:
                                            <span class="text-danger bold" id="timedOutDisplay">
                                                --:--
                                            </span>
                                        </p>
                                    @endif
                                    @if (session('instructor') == 1)
                                        <div class="text-center">
                                            <img class="profile-user-img img-fluid img-circle"
                                                src="{{ !empty(session('attendance')->photo) ? '/img/student/' . session('attendance')->instructorNo . '.png' : '/dist/img/avatar.png' }}"
                                                alt="student">
                                        </div>
                                        <p class="text-center bold" style="font-size: 20px">
                                            {{ session('attendance')->firstName }} {{ session('attendance')->lastName }}
                                        </p>
                                        <p class="text-center">{{ session('attendance')->instructorNo }}</p>
                                        <p class="text-center">
                                            Timed in:
                                            <span class="text-success bold mr-3" id="timedInDisplay">
                                                --:--
                                            </span>
                                            Timed out:
                                            <span class="text-danger bold" id="timedOutDisplay">
                                                --:--
                                            </span>
                                        </p>
                                    @endif
                                @endif
                            @endif
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
        </div>
        <script type="text/javascript">
            document.addEventListener('DOMContentLoaded', function() {
                var modalBtn = document.getElementById('displayAttendance');
                @if (request()->isMethod('get') && session('attendance'))
                    modalBtn.removeAttribute('hidden');
                    modalBtn.click();
                    modalBtn.setAttribute('hidden', true);

                    // Format timedIn into 12-hour time format
                    @if (session('attendance')->timedIn)
                        var timedIn = new Date('{{ session('attendance')->timedIn }}');
                        var formattedTimedIn = format12HourTime(timedIn);

                        document.getElementById('timedInDisplay').innerHTML = formattedTimedIn;
                    @endif

                    @if (session('attendance')->timedOut)
                        var timedOut = new Date('{{ session('attendance')->timedOut }}');
                        var formattedTimedOut = format12HourTime(timedOut);

                        document.getElementById('timedOutDisplay').innerHTML = formattedTimedOut;
                    @endif

                    setTimeout(function() {
                        var closeBtn = document.getElementById('close');
                        closeBtn.click();
                    }, 3000);
                @endif
            });

            function format12HourTime(date) {
                var hours = date.getHours();
                var minutes = date.getMinutes();
                var ampm = hours >= 12 ? 'PM' : 'AM';
                hours = hours % 12 || 12; // Convert 0 to 12
                minutes = minutes < 10 ? '0' + minutes : minutes;
                return hours + ':' + minutes + ' ' + ampm;
            }
        </script>
        @include('partials.footer')
