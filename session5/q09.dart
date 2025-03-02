/*
Library Management System
Create a system to manage books in a library.
Implement a Book class with properties like title, author, isbn, and isAvailable.
Implement a Library class with methods:
- addBook(Book book): Adds a book to the library.
- borrowBook(String isbn): Marks a book as borrowed if available.
- returnBook(String isbn): Marks a book as available again.
- searchByTitle(String title): Returns books matching the title.
Ensure that the system correctly updates the book's availability.
*/
class Book {
  String title, author, isbn;
  bool isAvailable = true;

  Book(this.title, this.author, this.isbn);
}

class Library {
  List<Book> books = [];
  void addBook(Book book) => books.add(book);

  bool barrowBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn && book.isAvailable) {
        book.isAvailable = false;
        return true;
      }
    }
    return false;
  }

  void returnBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn) {
        book.isAvailable = true;
      }
    }
  }
}

void main() {
  Library library = Library();
  library.addBook(Book('Data Structure', 'by Tharwat sami', '500'));

  print(library.barrowBook('500'));
}
