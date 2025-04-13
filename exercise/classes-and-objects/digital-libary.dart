/*
Manage a simple digital library
Classes:
Book → title, author, available (bool)
User → name, borrowedBooks (List)
Library → list of books, borrowBook(), returnBook()
*/
class Libary {
  //list of books that library has, maybe vary each library objects
  //run the library
  void run(){
    //until certain steps
  }
}
class User {
  final String name;
  final List<Book> borrowedBooks;

  User(this.name) : borrowedBooks = [];

  void borrow(Book book) {
    if (!book.available) {
      print('Book ${book.title} by ${book.author} is not available');
      return;
    }
    borrowedBooks.add(book);
    book.borrowed();
    print('$name borrowed ${book.title} by ${book.author}');
  }

  void returnBook(Book book) {
    if (!borrowedBooks.contains(book)) {
      print('$name did not borrow ${book.title} by ${book.author}');
      return;
    }
    borrowedBooks.remove(book);
    book.returned();
    print('$name returned ${book.title} by ${book.author}');
  }
}

class Book {
  final String title, author;
  bool available;

  Book(this.title, this.author, this.available);

  void borrowed() => available = false;
  void returned() => available = true;
}
