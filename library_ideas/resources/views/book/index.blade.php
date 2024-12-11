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
                                <h1>Books</h1>
                                <a href="/book/add" class="btn btn btn-success">
                                    <i class="fas fa-plus mr-1"></i> Add New Book
                                </a>
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
                                    <table id="dt-bookIndex" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Book Title</th>
                                                <th>Author</th>
                                                <th>Year Published</th>
                                                <th>Volume</th>
                                                <th>Edition</th>
                                                <th>Copies</th>
                                                <th>Borrowed</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($books as $book)
                                                <tr class="{{ $book->borrowed == 1 ? 'table-danger' : '' }}">
                                                    <td>{{ $book->id }}</td>
                                                    <td>{{ $book->bookTitle }}</td>
                                                    <td>{{ $book->author }}</td>
                                                    <td>{{ $book->yearPublished }}</td>
                                                    <td>{{ $book->volume }}</td>
                                                    <td>{{ $book->edition }}</td>
                                                    <td>{{ $book->available_copies }} / {{ $book->copies }}</td>
                                                    <td>{{ $book->borrowed == 1 ? 'Yes' : 'No' }}</td>
                                                    <td>
                                                        <div class="btn-group" role="group" aria-label="action group">
                                                            <form class="btn btn-primary btn-sm">
                                                                <a class="btn btn-primary btn-sm "
                                                                    href="/book/{{ $book->id }}"><i
                                                                        class="fas fa-eye"></i></a>
                                                            </form>
                                                            <form class="btn btn-info btn-sm">
                                                                <a class="btn btn-info btn-sm"
                                                                    href="/book/{{ $book->id }}/edit"><i
                                                                        class="fas fa-edit"></i></a>
                                                            </form>
                                                            @if (auth()->user()->position == 'Administrator' || auth()->user()->position == 'Librarian')
                                                                <form class="btn btn-danger btn-sm">
                                                                    <button class="btn btn-danger btn-sm" type="button"
                                                                        class="btn btn-success" data-toggle="modal"
                                                                        data-target="#confirmationModal{{ $book->id }}"><i
                                                                            class="fas fa-trash"></i></button>
                                                                </form>
                                                            @endif

                                                        </div>
                                                    </td>
                                                </tr>
                                                <!-- Confirmation Modal -->
                                                <div class="modal fade" id="confirmationModal{{ $book->id }}"
                                                    role="dialog" aria-labelledby="confirmationModalTitle"
                                                    aria-hidden="true">
                                                    <div class="modal-dialog modal-dialog-centered" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title text-center"
                                                                    id="confirmationModalTitle">Delete Book</h5>
                                                                <button type="button" class="close"
                                                                    data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body text-center">
                                                                <p>You are about to delete the record of the book <span
                                                                        class="text-bold">{{ $book->bookTitle }}</span>.
                                                                    This action cannot be undone.
                                                                    Please click <span
                                                                        class="text-bold text-danger">Delete</span> to
                                                                    continue.
                                                                </p>
                                                            </div>
                                                            <div class="modal-footer text-center">
                                                                <button type="button" class="btn btn-secondary"
                                                                    data-dismiss="modal">Cancel</button>
                                                                <form action="/book/{{ $book->id }}"
                                                                    method="post">
                                                                    @method('DELETE')
                                                                    @csrf
                                                                    <button type="submit"
                                                                        class="btn btn-danger">Delete</button>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
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
