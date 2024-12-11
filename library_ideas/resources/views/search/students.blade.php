@extends('layouts.app')

@section('content')
    <div class="container">
        <h3>Search Student</h3>
        <form action="{{ route('search.student') }}" method="GET">
            <input type="text" name="search" placeholder="Search by ID or Name" class="form-control" required>
            <button type="submit" class="btn btn-primary mt-2">Search</button>
        </form>

        @if (isset($student))
            <h4 class="mt-4">Student Details</h4>
            <p><strong>Name:</strong> {{ $student->name }}</p>
            <p><strong>ID Number:</strong> {{ $student->id_number }}</p>

            <h5>Borrowed Books</h5>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Book Title</th>
                        <th>Borrowed On</th>
                        <th>Return Date</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($borrowedBooks as $transaction)
                        <tr>
                            <td>{{ $transaction->book->title }}</td>
                            <td>{{ $transaction->borrowed_at }}</td>
                            <td>{{ $transaction->return_date }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        @elseif (session('error'))
            <p class="alert alert-danger">{{ session('error') }}</p>
        @endif
    </div>
@endsection
