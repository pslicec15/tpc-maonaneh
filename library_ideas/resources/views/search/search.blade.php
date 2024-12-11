<!-- resources/views/books/search.blade.php -->

@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Advanced Search</h1>
    <form action="{{ route('search-books') }}" method="GET">
        <div class="form-group">
            <label for="title">Book Title</label>
            <input type="text" class="form-control" id="title" name="title">
        </div>
        <div class="form-group">
            <label for="author">Author</label>
            <input type="text" class="form-control" id="author" name="author">
        </div>
        <div class="form-group">
            <label for="publisher">Publisher</label>
            <input type="text" class="form-control" id="publisher" name="publisher">
        </div>
        <!-- Add other fields as necessary... -->
        <button type="submit" class="btn btn-primary">Search</button>
    </form>
</div>
@endsection
