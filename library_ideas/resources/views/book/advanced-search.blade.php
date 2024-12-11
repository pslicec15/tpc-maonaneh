@extends('layouts.app')

@section('content')
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Advanced Search</h1>
                </div>
            </div>
        </div>
    </section>

    <section class="content">
        <div class="container-fluid">
            <form action="{{ route('books.performSearch') }}" method="POST">
                @csrf
                <div class="card card-success">
                    <div class="card-header">
                        <h3 class="card-title">Search Criteria</h3>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="title">Book Title</label>
                            <input type="text" name="title" id="title" class="form-control" placeholder="Enter book title">
                        </div>
                        <div class="form-group">
                            <label for="author">Author</label>
                            <input type="text" name="author" id="author" class="form-control" placeholder="Enter author name">
                        </div>
                        <div class="form-group">
                            <label for="category">Category</label>
                            <input type="text" name="category" id="category" class="form-control" placeholder="Enter book category">
                        </div>
                        <div class="form-group">
                            <label for="publication_year">Publication Year</label>
                            <input type="number" name="publication_year" id="publication_year" class="form-control" placeholder="Enter publication year">
                        </div>
                    </div>
                    <div class="card-footer">
                        <button type="submit" class="btn btn-success">Search</button>
                    </div>
                </div>
            </form>
        </div>
    </section>
</div>
@endsection
