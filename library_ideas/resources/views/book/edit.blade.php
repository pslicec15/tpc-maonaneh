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
                    <div class="row mt-2 justify-content-center">
                        <div class="col-9">
                            <a href="/book" class="btn btn btn-secondary mt-3 mb-3">
                                <i class="fas fa-solid fa-arrow-left mr-1"></i> Back
                            </a>
                            <div class="card">
                                <form action="/book/{{ $book->id }}/edit" method="post">
                                    @method('PUT')
                                    @csrf
                                    <div class="card-body">
                                        <h4 class="pt-1">Edit Book</h4>
                                        <div class="row">
                                            <div class="col col-6">
                                                <div class="form-group">
                                                    <label for="bookTitle">Book Title</label>
                                                    <input type="text" class="form-control" name="bookTitle"
                                                        value="{{ $book->bookTitle }}"
                                                        placeholder="Enter book title...">
                                                    @error('bookTitle')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="bookNum">Book Number</label>
                                                    <input type="text" class="form-control" name="bookNum"
                                                        value="{{ $book->bookNum }}" placeholder="Enter book number...">
                                                    @error('bookNum')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="edition">Edition</label>
                                                    <input type="text" class="form-control" name="edition"
                                                        value="{{ $book->edition }}" placeholder="Enter edition...">
                                                    @error('edition')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="pages">Pages</label>
                                                    <input type="text" class="form-control" name="pages"
                                                        value="{{ $book->pages }}"
                                                        placeholder="Enter number of pages...">
                                                    @error('pages')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="author">Author</label>
                                                    <input type="text" class="form-control" name="author"
                                                        value="{{ $book->author }}" placeholder="Enter author name...">
                                                    @error('author')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="publisher">Publisher</label>
                                                    <input type="text" class="form-control" name="publisher"
                                                        value="{{ $book->publisher }}"
                                                        placeholder="Enter publisher...">
                                                    @error('publisher')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="placeOfPublication">Place of Publication</label>
                                                    <input type="text" class="form-control" name="placeOfPublication"
                                                        value="{{ $book->placeOfPublication }}"
                                                        placeholder="Enter place of publication...">
                                                    @error('placeOfPublication')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="copyrightDate">Copyright Date</label>
                                                    <input type="text" class="form-control" name="copyrightDate"
                                                        value="{{ $book->copyrightDate }}"
                                                        placeholder="Enter copyright date...">
                                                    @error('copyrightDate')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="size">Size</label>
                                                    <input type="text" class="form-control" name="size"
                                                    value="{{ $book->size }}"
                                                        placeholder="Enter size...">
                                                    @error('size')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="yearPublished">Year Published</label>
                                                    <input type="text" class="form-control" name="yearPublished"
                                                        value="{{ $book->yearPublished }}"
                                                        placeholder="Enter year published...">
                                                    @error('yearPublished')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="ISBN">ISBN</label>
                                                    <input type="text" class="form-control" name="ISBN"
                                                        value="{{ $book->ISBN }}" placeholder="Enter ISBN...">
                                                    @error('ISBN')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                            </div>
                                            <div class="col col-6">
                                                <div class="form-group">
                                                    <label for="callNumber">Call #</label>
                                                    <input type="text" class="form-control" name="callNumber"
                                                        value="{{ $book->callNumber }}"
                                                        placeholder="Enter call number...">
                                                    @error('callNumber')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="location">Location</label>
                                                    <input type="text" class="form-control" name="location"
                                                        value="{{ $book->location }}"
                                                        placeholder="Enter location...">
                                                    @error('location')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="subjects">Subjects</label>
                                                    <input type="text" class="form-control" name="subjects"
                                                        value="{{ $book->subjects }}"
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
                                                            <option value="{{ $category->id }}"
                                                                @selected($book->addedBy == $category->id)>
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
                                                        value="{{ $book->volume }}" placeholder="Enter volume...">
                                                    @error('volume')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="serialNumber">Serial Number</label>
                                                    <input type="text" class="form-control" name="serialNumber"
                                                        value="{{ $book->serialNumber }}"
                                                        placeholder="Enter serial number...">
                                                    @error('serialNumber')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="copies">Copies</label>
                                                    <input type="text" class="form-control" name="copies"
                                                        value="{{ $book->copies }}" placeholder="Enter copies...">
                                                    @error('copies')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="damaged">Damaged</label>
                                                    <input type="text" class="form-control" name="damaged"
                                                        value="{{ $book->damaged }}" placeholder="Enter damaged books...">
                                                    @error('damaged')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="price">Price</label>
                                                    <input type="text" class="form-control" name="price"
                                                        value="{{ $book->price }}" placeholder="Enter price...">
                                                    @error('copies')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="sourceFund">Source Fund</label>
                                                    <input type="text" class="form-control" name="sourceFund"
                                                        value="{{ $book->sourceFund }}"
                                                        placeholder="Enter source fund...">
                                                    @error('sourceFund')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="remarks">Remarks</label>
                                                    <input type="text" class="form-control" name="remarks"
                                                        value="{{ $book->remarks }}" placeholder="Enter remarks...">
                                                    @error('remarks')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit" class="btn btn-success">Update</button>
                                    </div>
                                </form>
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
