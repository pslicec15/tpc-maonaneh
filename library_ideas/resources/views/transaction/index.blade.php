@include('partials.header')

<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed">
    <div class="wrapper">
        <!-- Navbar -->
        <x-nav />
        <!-- /.navbar -->
        <!-- Main Sidebar Container -->
        <x-sidebar />
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-12">
                            <div class="d-flex justify-content-between align-items-center">
                                <h1>Borrowers List</h1>
                            </div>
                        </div><!-- /.container-fluid -->
            </section>
            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <table id="dt-default" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Borrowers ID</th>
                                                <th>Borrower</th>
                                                <th>Book Borrowed</th>
                                                <th>Date Borrowed</th>
                                                <th>Date Returned</th>
                                                <th>Issued By</th>
                                                <th>Returned To</th>
                                                <th>Status</th>
                                                <th>Remarks</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($borrowed as $borrow)
                                                @if ($borrow->status == 'Borrowed')
                                                    <tr>
                                                        <td>
                                                            @if ($borrow->studentId != null)
                                                                {{ $borrow->student->studentNo }}
                                                            @else
                                                                {{ $borrow->instructor->instructorNo }}
                                                            @endif
                                                        </td>
                                                        <td>
                                                            @if ($borrow->studentId != null)
                                                                {{ $borrow->student->firstName }}
                                                                {{ $borrow->student->middleName }}
                                                                {{ $borrow->student->lastName }}
                                                            @else
                                                                {{ $borrow->instructor->firstName }}
                                                                {{ $borrow->instructor->middleName }}
                                                                {{ $borrow->instructor->lastName }}
                                                            @endif
                                                        </td>
                                                        <td>{{ $borrow->book->bookTitle }}</td>
                                                        <td>{{ $borrow->dateBorrowed }}</td>
                                                        <td>
                                                            @if ($borrow->dateReturned)
                                                                {{ $borrow->dateReturned }}
                                                            @else
                                                                <p class="text-center">--:--</p>
                                                            @endif
                                                        <td>
                                                            @if ($borrow->issuedByUser)
                                                                {{ $borrow->issuedByUser->name }}
                                                            @else
                                                                <p class="text-center">--:--</p>
                                                            @endif
                                                        </td>
                                                        <td>
                                                            @if ($borrow->returnedToUser != null)
                                                                {{ $borrow->returnedToUser->name }}
                                                            @else
                                                                <p class="text-center">--:--</p>
                                                            @endif
                                                        </td>
                                                        <td>{{ $borrow->status }}</td>
                                                        <td>{{ $borrow->remarks }}</td>

                                                        <td>
                                                            <button class="btn btn-success btn-sm" type="button"
                                                                data-toggle="modal"
                                                                data-target="#confirmationModal{{ $borrow->id }}">
                                                                Return
                                                            </button>
                                                        </td>
                                                    </tr>
                                                    <div class="modal fade" id="confirmationModal{{ $borrow->id }}"
                                                        role="dialog" aria-labelledby="confirmationModalTitle"
                                                        aria-hidden="true">
                                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title text-center"
                                                                        id="confirmationModalTitle">Return Book</h5>
                                                                    <button type="button" class="close"
                                                                        data-dismiss="modal" aria-label="Close">
                                                                        <span aria-hidden="true">&times;</span>
                                                                    </button>
                                                                </div>
                                                                <form
                                                                    action="/borrowed/{{ $borrow->id }}/return-book"
                                                                    method="post">
                                                                    @method('PUT')
                                                                    @csrf
                                                                    <div class="modal-body">
                                                                        <p>Add Remarks</p>
                                                                        <input type="text" class="form-control mb-1"
                                                                            name="remarks" id="remarks"
                                                                            placeholder="Enter remarks...">
                                                                        @error('remarks')
                                                                            <p class="text-danger">{{ $message }}</p>
                                                                        @enderror
                                                                        <input type="checkbox" name="damaged" id="damaged"> Damaged
                                                                    </div>
                                                                    <div class="modal-footer text-center">

                                                                        <button type="submit"
                                                                            class="btn btn-success">Submit</button>

                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @endif
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card -->
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
        <x-footer />
    </div>
    <!-- ./wrapper -->
    @include('partials.footer')
