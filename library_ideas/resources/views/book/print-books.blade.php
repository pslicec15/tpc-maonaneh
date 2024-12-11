@include('partials.header')

<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed specific-page">
    <div class="container-fluid">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Book Title</th>
                    <th>Book Number</th>
                    <th>Edition</th>
                    <th>Pages</th>
                    <th>Author</th>
                    <th>Publisher</th>
                    <th>Place of Publication</th>
                    <th>Copyright Date</th>
                    <th>Size</th>
                    <th>Year Published</th>
                    <th>ISBN</th>
                    <th>Call Number</th>
                    <th>Location</th>
                    <th>Subjects</th>
                    <th>Category</th>
                    <th>Volume</th>
                    <th>Serial Number</th>
                    <th>Copies</th>
                    <th>Price</th>
                    <th>Source Fund</th>
                    <th>Remarks</th>
                    <th>Added On</th>
                    <th>Added By</th>
                    <th>Borrowed</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($books as $book)
                    <tr>
                        <td>{{ $book['id'] }}</td>
                        <td>{{ $book['bookTitle'] }}</td>
                        <td>{{ $book['bookNum'] }}</td>
                        <td>{{ $book['edition'] }}</td>
                        <td>{{ $book['pages'] }}</td>
                        <td>{{ $book['author'] }}</td>
                        <td>{{ $book['publisher'] }}</td>
                        <td>{{ $book['placeOfPublication'] }}</td>
                        <td>{{ $book['copyrightDate'] }}</td>
                        <td>{{ $book['size'] }}</td>
                        <td>{{ $book['yearPublished'] }}</td>
                        <td>{{ $book['ISBN'] }}</td>
                        <td>{{ $book['callNumber'] }}</td>
                        <td>{{ $book['location'] }}</td>
                        <td>{{ $book['subjects'] }}</td>
                        <td>{{ $book['category'] }}</td>
                        <td>{{ $book['volume'] }}</td>
                        <td>{{ $book['serialNumber'] }}</td>
                        <td>{{ $book['copies'] }}</td>
                        <td>{{ $book['price'] }}</td>
                        <td>{{ $book['sourceFund'] }}</td>
                        <td>{{ $book['remarks'] }}</td>
                        <td>{{ $book['addedOn'] }}</td>
                        <td>{{ $book['addedBy'] }}</td>
                        <td>{{ $book['borrowed'] }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <!-- ./wrapper -->
    <script>
        window.addEventListener("load", function() {
            setTimeout(function() {
                window.print();
            }, 1000); // Adjust the delay time if needed
        });
    </script>
    @include('partials.footer')
</body>

</html>
