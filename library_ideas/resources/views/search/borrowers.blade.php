@extends('layouts.app')

@section('content')
    <div class="container">
        <h3>Search Borrowers</h3>
        <form action="{{ route('search.borrowers') }}" method="GET">
            <input type="text" name="search" placeholder="Search by ID or Name" class="form-control" required>
            <button type="submit" class="btn btn-primary mt-2">Search</button>
        </form>

        @if (isset($borrowers))
            <h4 class="mt-4">Search Results</h4>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>ID Number</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($borrowers as $borrower)
                        <tr>
                            <td>{{ $borrower->name }}</td>
                            <td>{{ $borrower->id_number }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        @endif
    </div>
@endsection
