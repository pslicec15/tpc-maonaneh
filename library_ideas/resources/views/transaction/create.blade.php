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
            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <form action="/borrowers-form" method="post">
                        @csrf
                        <div class="card-body">
                            <div class="row">
                                <div class="col-12">
                                    <!-- Custom Tabs -->
                                    <div class="card">
                                        <div class="card-header d-flex p-0">
                                            <h3 class="card-title p-3">Borrower's Form</h3>
                                            <ul class="nav nav-pills ml-auto p-2">
                                                <li class="nav-item"><a class="nav-link active" href="#tab_1"
                                                        data-toggle="tab">Student</a></li>
                                                <li class="nav-item"><a class="nav-link" href="#tab_2"
                                                        data-toggle="tab">Instructor</a></li>
                                            </ul>
                                        </div><!-- /.card-header -->
                                        <div class="card-body">
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="tab_1">
                                                    <div class="row">
                                                        <div class="col col-12">
                                                            <div class="form-group">
                                                                <label for="bookID">Select Book</label>
                                                                <table id="dt-book"
                                                                    class="table table-bordered table-striped">
                                                                    <thead>
                                                                        <tr>
                                                                            <th></th>
                                                                            <th>ID</th>
                                                                            <th>Book Title</th>
                                                                            <th>Author</th>
                                                                            <th>Year Published</th>
                                                                            <th>Volume</th>
                                                                            <th>Edition</th>
                                                                            <th>Copies</th>
                                                                            <th>Borrowed</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        @foreach ($books as $book)
                                                                            <tr
                                                                                class="{{ $book->borrowed == 1 ? 'table-danger' : '' }}">
                                                                                <td><input type="checkbox"
                                                                                        value="{{ $book->id }}">
                                                                                </td>
                                                                                <td>{{ $book->id }}</td>
                                                                                <td>{{ $book->bookTitle }}</td>
                                                                                <td>{{ $book->author }}</td>
                                                                                <td>{{ $book->yearPublished }}</td>
                                                                                <td>{{ $book->volume }}</td>
                                                                                <td>{{ $book->edition }}</td>
                                                                                <td>{{ $book->available_copies }} /
                                                                                    {{ $book->copies }}</td>
                                                                                <td>{{ $book->borrowed == 1 ? 'Yes' : 'No' }}
                                                                                </td>
                                                                            </tr>
                                                                        @endforeach
                                                                    </tbody>
                                                                </table>
                                                                <input type="text" class="form-control"
                                                                    name="bookID" id="book"
                                                                    placeholder="Enter book to borrow..." hidden>
                                                                @error('bookID')
                                                                    <p class="text-danger">{{ $message }}</p>
                                                                @enderror
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="studentID">Select Borrower</label>
                                                                @error('studentID')
                                                                    <p class="text-danger">{{ $message }}</p>
                                                                @enderror
                                                                <table id="dt-student-borrower"
                                                                    class="table table-bordered table-striped">
                                                                    <thead>
                                                                        <tr>
                                                                            <th></th>
                                                                            <th>Student No.</th>
                                                                            <th>Name</th>
                                                                            <th>Course</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        @foreach ($students as $student)
                                                                            <tr>
                                                                                <td>
                                                                                    <input type="radio"
                                                                                        name="selected_borrower"
                                                                                        value="{{ $student->studentNo }}">
                                                                                </td>
                                                                                <td>{{ $student->studentNo }}</td>
                                                                                <td>{{ $student->firstName }}
                                                                                    {{ $student->middleName }}
                                                                                    {{ $student->lastName }}</td>
                                                                                <td>{{ $student->course }}</td>
                                                                            </tr>
                                                                        @endforeach
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="notes">Notes</label>
                                                                <textarea class="form-control" name="notes" id="notes" placeholder="Enter additional notes..."></textarea>
                                                                @error('studentID')
                                                                    <p class="text-danger">{{ $message }}</p>
                                                                @enderror
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button type="submit" class="btn btn-success">Submit</button>
                                                </div>
                                                <!-- /.tab-pane -->
                                                <div class="tab-pane" id="tab_2">
                                                    <div class="row">
                                                        <div class="col col-12">
                                                            <div class="form-group">
                                                                <label for="bookID">Select Book</label>
                                                                <table id="dt-book-instructor"
                                                                    class="table table-bordered table-striped">
                                                                    <thead>
                                                                        <tr>
                                                                            <th></th>
                                                                            <th>ID</th>
                                                                            <th>Book Title</th>
                                                                            <th>Author</th>
                                                                            <th>Year Published</th>
                                                                            <th>Volume</th>
                                                                            <th>Edition</th>
                                                                            <th>Copies</th>
                                                                            <th>Borrowed</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        @foreach ($books as $book)
                                                                            <tr
                                                                                class="{{ $book->borrowed == 1 ? 'table-danger' : '' }}">
                                                                                <td><input type="checkbox"
                                                                                        name="selected_borrower"
                                                                                        value="{{ $book->id }}">
                                                                                </td>
                                                                                <td>{{ $book->id }}</td>
                                                                                <td>{{ $book->bookTitle }}</td>
                                                                                <td>{{ $book->author }}</td>
                                                                                <td>{{ $book->yearPublished }}</td>
                                                                                <td>{{ $book->volume }}</td>
                                                                                <td>{{ $book->edition }}</td>
                                                                                <td>{{ $book->available_copies }} /
                                                                                    {{ $book->copies }}</td>
                                                                                <td>{{ $book->borrowed == 1 ? 'Yes' : 'No' }}
                                                                                </td>
                                                                            </tr>
                                                                        @endforeach
                                                                    </tbody>
                                                                </table>
                                                                <input type="text" class="form-control"
                                                                    name="bookID" id="book"
                                                                    placeholder="Enter book to borrow..." hidden>
                                                                @error('bookID')
                                                                    <p class="text-danger">{{ $message }}</p>
                                                                @enderror
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="studentID">Select Borrower</label>
                                                                @error('studentID')
                                                                    <p class="text-danger">{{ $message }}</p>
                                                                @enderror
                                                                <table id="dt-instructor-borrower"
                                                                    class="table table-bordered table-striped">
                                                                    <thead>
                                                                        <tr>
                                                                            <th></th>
                                                                            <th>Instructor No.</th>
                                                                            <th>Name</th>
                                                                            <th>Department</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        @foreach ($instructors as $instructor)
                                                                            <tr>
                                                                                <td>
                                                                                    <input type="radio"
                                                                                        name="selected_borrower"
                                                                                        value="{{ $instructor->instructorNo }}">
                                                                                </td>
                                                                                <td>{{ $instructor->instructorNo }}
                                                                                </td>
                                                                                <td>{{ $instructor->firstName }}
                                                                                    {{ $instructor->middleName }}
                                                                                    {{ $instructor->lastName }}</td>
                                                                                <td>{{ $instructor->department }}</td>
                                                                            </tr>
                                                                        @endforeach
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="notes">Notes</label>
                                                                <textarea class="form-control" name="notes" id="notes" placeholder="Enter additional notes..."></textarea>
                                                                @error('studentID')
                                                                    <p class="text-danger">{{ $message }}</p>
                                                                @enderror
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button type="submit" class="btn btn-success">Submit</button>
                                                </div>
                                                <!-- /.tab-pane -->
                                            </div>
                                            <!-- /.tab-content -->
                                        </div><!-- /.card-body -->
                                    </div>
                                    <!-- ./card -->
                                </div>
                                <!-- /.col -->
                            </div>
                        </div>

                    </form>
                </div>
                <!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
        <x-footer />
    </div>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const selectableRows = document.querySelectorAll('.selectable-row');
            const selectedBorrowerInput = document.getElementById('selectedBorrower');

            selectableRows.forEach(function(row) {
                row.addEventListener('click', function() {
                    // Remove the 'selected' class from all rows
                    selectableRows.forEach(function(r) {
                        r.classList.remove('selected');
                    });

                    // Add the 'selected' class to the clicked row
                    row.classList.add('selected');

                    // Get the identifier of the selected row
                    const identifier = row.getAttribute('data-identifier');

                    // Update the hidden input with the selected identifier
                    selectedBorrowerInput.value = identifier;

                    // Log the identifier to the console for debugging
                    console.log('Selected Identifier:', identifier);
                });
            });
        });
    </script>


    <!-- ./wrapper -->
    @include('partials.footer')
