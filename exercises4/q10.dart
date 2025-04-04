class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book(this.title, this.author, this.isbn, {this.isAvailable = true});
  void displayInfo() {
    print('title:$title,author:$author,isbn:$isbn,isAvailable:$isAvailable');
  }
}

class Library {
  List<Book> books = [];

  
  void addBook(Book book) {
    books.add(book);  
    print("تم إضافة الكتاب: '${book.title}' إلى المكتبة.");
  }

 
  void borrowBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn && book.isAvailable) {
        book.isAvailable = false; // الكتاب مش متاح الآن
        print("تم استعارة الكتاب: '${book.title}'.");
        return;
      }
    }
    print("الكتاب غير متاح أو رقم ISBN غير صحيح.");
  }


  void returnBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn &&  book.isAvailable) {
        book.isAvailable = true; 
        print("تم إرجاع الكتاب: '${book.title}'.");
        return;
      }
    }
    print("لا يمكن إرجاع الكتاب.");
  }

  
  void searchByTitle(String title) {
    var foundBooks = books.where((book) => book.title.toLowerCase().contains(title.toLowerCase())).toList();
    
    if (foundBooks.isNotEmpty) {
      print("الكتب التي تطابق العنوان '$title':");
      for (var book in foundBooks) {
        book.displayInfo();
      }
    } else {
      print("لم يتم العثور على كتب بعنوان '$title'.");
    }
  }
}
void main() {
  Library library = Library();

  
  library.addBook(Book("Dart Programming", "mrwan", "12345"));
  library.addBook(Book("Flutter Basics", "mrwan", "67890"));

 
  library.borrowBook("12345"); 
  library.borrowBook("12345"); 

 
  library.returnBook("12345"); 
  library.returnBook("12345"); 

  
  library.borrowBook("11111"); 
}
