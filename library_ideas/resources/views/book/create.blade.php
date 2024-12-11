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
                <div class="container-fluid ">
                    <div class="row mt-2 justify-content-center">
                        <div class="col-9">
                            <a href="/book" class="btn btn btn-secondary mt-3 mb-3">
                                <i class="fas fa-solid fa-arrow-left mr-1"></i> Back
                            </a>
                            <div class="card">
                                <form action="/book/add" method="post">
                                    @csrf
                                    <div class="card-body">
                                        <h4 class="pt-1">Add New Book</h4>
                                        <div class="row">
                                            <div class="col col-6">
                                                <div class="form-group">
                                                    <label for="bookTitle">Book Title</label>
                                                    <input type="text" class="form-control" name="bookTitle"
                                                        placeholder="Enter book title...">
                                                    @error('bookTitle')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="bookNum">Book Number</label>
                                                    <input type="text" class="form-control" name="bookNum"
                                                        placeholder="Enter book number...">
                                                    @error('bookNum')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="edition">Edition</label>
                                                    <input type="text" class="form-control" name="edition"
                                                        placeholder="Enter edition...">
                                                    @error('edition')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="pages">Pages</label>
                                                    <input type="text" class="form-control" name="pages"
                                                        placeholder="Enter number of pages...">
                                                    @error('pages')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="author">Author</label>
                                                    <input type="text" class="form-control" name="author"
                                                        placeholder="Enter author name...">
                                                    @error('author')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="publisher">Publisher</label>
                                                    <input type="text" class="form-control" name="publisher"
                                                        placeholder="Enter publisher...">
                                                    @error('publisher')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="placeOfPublication">Place of Publication</label>
                                                    <input type="text" class="form-control" name="placeOfPublication"
                                                        placeholder="Enter place of publication...">
                                                    @error('placeOfPublication')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="copyrightDate">Copyright Date</label>
                                                    <input type="text" class="form-control" name="copyrightDate"
                                                        placeholder="Enter copyright date...">
                                                    @error('copyrightDate')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="size">Size</label>
                                                    <input type="text" class="form-control" name="size"
                                                        placeholder="Enter size...">
                                                    @error('size')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="yearPublished">Year Published</label>
                                                    <input type="text" class="form-control" name="yearPublished"
                                                        placeholder="Enter year published...">
                                                    @error('yearPublished')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="ISBN">ISBN</label>
                                                    <input type="text" class="form-control" name="ISBN"
                                                        placeholder="Enter ISBN...">
                                                    @error('ISBN')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                            </div>
                                            <div class="col col-6">
                                                <div class="form-group">
                                                    <label for="callNumber">Call #</label>
                                                    <input type="text" class="form-control" name="callNumber"
                                                        placeholder="Enter call number...">
                                                    @error('callNumber')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="location">Location</label>
                                                    <input type="text" class="form-control" name="location"
                                                        placeholder="Enter location...">
                                                    @error('location')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="subjects">Subjects</label>
                                                    <input type="text" class="form-control" name="subjects"
                                                        placeholder="Enter subjects...">
                                                    @error('subjects')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="categoryId">Category</label>
                                                    <select class="form-control select2" name="categoryId"
                                                        style="width: 100%;">
                                                        <option selected disabled>Select category...</option>
                                                        @foreach ($categories as $category)
                                                            <option value="{{ $category->id }}">
                                                                {{ $category->categoryDesc }}</option>
                                                        @endforeach
                                                    </select>
                                                    @error('categoryId')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="volume">Volume</label>
                                                    <input type="text" class="form-control" name="volume"
                                                        placeholder="Enter volume...">
                                                    @error('volume')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="serialNumber">Serial Number</label>
                                                    <input type="text" class="form-control" name="serialNumber"
                                                        placeholder="Enter serial number...">
                                                    @error('serialNumber')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="copies">Copies</label>
                                                    <input type="text" class="form-control" name="copies"
                                                        placeholder="Enter copies...">
                                                    @error('copies')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="price">Price</label>
                                                    <input type="text" class="form-control" name="price"
                                                        placeholder="Enter price...">
                                                    @error('copies')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="sourceFund">Source Fund</label>
                                                    <input type="text" class="form-control" name="sourceFund"
                                                        placeholder="Enter source fund...">
                                                    @error('sourceFund')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="remarks">Remarks</label>
                                                    <input type="text" class="form-control" name="remarks"
                                                        placeholder="Enter remarks...">
                                                    @error('remarks')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                            </div>
                                        </div>
                                        <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#confirmationModal">
                                            Proceed
                                        </button>

                                        <!-- Confirmation Modal -->
                                        <div class="modal fade" id="confirmationModal" tabindex="-1" role="dialog"
                                            aria-labelledby="confirmationModalTitle" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title text-center"
                                                            id="confirmationModalTitle">
                                                            Add New Book</h5>
                                                        <button type="button" class="close" data-dismiss="modal"
                                                            aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body text-center">
                                                        <p>You are about to add new book.
                                                            Make sure all the fields are filled-out correctly.
                                                            Please click <span
                                                                class="text-bold text-success">Save</span> to continue.
                                                        </p>
                                                    </div>
                                                    <div class="modal-footer text-center">
                                                        <button type="button" class="btn btn-secondary"
                                                            data-dismiss="modal">Cancel</button>
                                                        <button type="submit" class="btn btn-success"
                                                            id="confirmAddBook">Save</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </form>
                            </div>
                        </div>
                    </div>
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
