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
                    <a href="/book" class="btn btn btn-secondary mt-5">
                        <i class="fas fa-solid fa-arrow-left mr-1"></i> Back
                    </a>
                    <div class="row mt-2">
                        <div class="card-body">
                            <div class="row">
                                <div class="col col-6">
                                    <div class="form-group">
                                        <label for="bookTitle">Book Title</label>
                                        <input type="text" class="form-control" name="bookTitle"
                                            value="{{ $book->bookTitle }}" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="bookNum">Book Number</label>
                                        <input type="text" class="form-control" name="bookNum"
                                            value="{{ $book->bookNum }}" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="edition">Edition</label>
                                        <input type="text" class="form-control" name="edition"
                                            value="{{ $book->edition }}" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="pages">Pages</label>
                                        <input type="text" class="form-control" name="pages"
                                            value="{{ $book->pages }}" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="author">Author</label>
                                        <input type="text" class="form-control" name="author"
                                            value="{{ $book->author }}" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="publisher">Publisher</label>
                                        <input type="text" class="form-control" name="publisher"
                                            value="{{ $book->publisher }}" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="placeOfPublication">Place of Publication</label>
                                        <input type="text" class="form-control" name="placeOfPublication"
                                            value="{{ $book->placeOfPublication }}"
                                             readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="copyrightDate">Copyright Date</label>
                                        <input type="text" class="form-control" name="copyrightDate"
                                            value="{{ $book->copyrightDate }}"
                                             readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="size">Size</label>
                                        <input type="text" class="form-control" name="size"
                                           readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="yearPublished">Year Published</label>
                                        <input type="text" class="form-control" name="yearPublished"
                                            value="{{ $book->yearPublished }}"
                                            readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="ISBN">ISBN</label>
                                        <input type="text" class="form-control" name="ISBN"
                                            value="{{ $book->ISBN }}" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="categoryId">Category</label>
                                        <input type="text" class="form-control" name="categoryId"
                                            value="{{ $book->category }}" readonly>
                                    </div>
                                </div>
                                <div class="col col-6">
                                    <div class="form-group">
                                        <label for="callNumber">Call #</label>
                                        <input type="text" class="form-control" name="callNumber"
                                            value="{{ $book->callNumber }}"
                                             readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="location">Location</label>
                                        <input type="text" class="form-control" name="location"
                                            value="{{ $book->location }}" readonly
                                            >
                                        @error('location')
                                            <p class="text-danger">{{ $message }}</p>
                                        @enderror
                                    </div>
                                    <div class="form-group">
                                        <label for="subjects">Subjects</label>
                                        <input type="text" class="form-control" name="subjects"
                                            value="{{ $book->subjects }}" readonly
                                            >
                                        @error('subjects')
                                            <p class="text-danger">{{ $message }}</p>
                                        @enderror
                                    </div>
                                    <div class="form-group">
                                        <label for="volume">Volume</label>
                                        <input type="text" class="form-control" name="volume"
                                            value="{{ $book->volume }}" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="serialNumber">Serial Number</label>
                                        <input type="text" class="form-control" name="serialNumber"
                                            value="{{ $book->serialNumber }}"
                                            readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="copies">Copies</label>
                                        <input type="text" class="form-control" name="copies"
                                            value="{{ $book->copies }}" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="damaged">Damaged Books</label>
                                        <input type="text" class="form-control" name="damaged"
                                            value="{{ $book->damaged }}" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="price">Price</label>
                                        <input type="text" class="form-control" name="price"
                                            value="{{ $book->price }}" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="sourceFund">Source Fund</label>
                                        <input type="text" class="form-control" name="sourceFund"
                                            value="{{ $book->sourceFund }}" 
                                            readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="remarks">Remarks</label>
                                        <input type="text" class="form-control" name="remarks"
                                            value="{{ $book->remarks }}" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="remarks">Added By</label>
                                        <input type="text" class="form-control" name="remarks"
                                            value="{{ $book->addedByUser }}" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="remarks">Added On</label>
                                        <input type="text" class="form-control" name="remarks"
                                            value="{{ $book->addedOn->format('F d, Y') }}"
                                            readonly>
                                    </div>
                                </div>
                            </div>
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
