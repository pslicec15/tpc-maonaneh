<?php

namespace App\Exports;

use App\Models\Book;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithSnappy;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class BooksExport implements FromCollection, WithHeadings, ShouldAutoSize
{
    public function collection()
    {
        $books = DB::table('books')
            ->join('category', 'books.categoryId', '=', 'category.id')
            ->join('users', 'books.addedBy', '=', 'users.id')
            ->select('books.*', 'category.categoryDesc as category', 'users.name as username')
            ->get();

        $books = $books->map(function ($book) {
            $borrowedCount = DB::table('borrowed')
                ->where('bookID', $book->id)
                ->whereNull('dateReturned')
                ->count();
            
            $book->available_copies = $book->copies - $borrowedCount;

            return [
                'id' => $book->id,
                'bookTitle' => $book->bookTitle,
                'bookNum' => $book->bookNum,
                'edition' => $book->edition,
                'pages' => $book->pages,
                'author' => $book->author,
                'publisher' => $book->publisher,
                'placeOfPublication' => $book->placeOfPublication,
                'copyrightDate' => $book->copyrightDate,
                'size' => $book->size,
                'yearPublished' => $book->yearPublished,
                'ISBN' => $book->ISBN,
                'callNumber' => $book->callNumber,
                'location' => $book->location,
                'subjects' => $book->subjects,
                'category' => $book->category,
                'volume' => $book->volume,
                'serialNumber' => $book->serialNumber,
                'copies' => $book->available_copies.'/'.$book->copies,
                'price' => $book->price,
                'sourceFund' => $book->sourceFund,
                'remarks' => $book->remarks,
                'addedOn' => $book->addedOn,
                'addedBy' => $book->username,
                'borrowed' => $book->borrowed == 1 ? 'Yes': 'No',
            ];
        });
        return $books;
    }


    public function headings(): array
    {
        return [
            'ID',
            'Book Title',
            'Book Number',
            'Edition',
            'Pages',
            'Author',
            'Publisher',
            'Place of Publication',
            'Copyright Date',
            'Size',
            'Year Published',
            'ISBN',
            'Call Number',
            'Location',
            'Subjects',
            'Category',
            'Volume',
            'Serial Number',
            'Copies',
            'Price',
            'Source Fund',
            'Remarks',
            'Added On',
            'Added By',
            'Borrowed'
        ];
    }
}
