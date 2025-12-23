void main() {
  // 1️⃣ Создаём книги
  Book book1 = Book('Harry Potter', 'J.K. Rowling');

  Book book2 = Book.withRating(
    'Sherlock Holmes',
    'Arthur Conan Doyle',
    9.5,
  );

  Book book3 = Book('The Hobbit', 'J.R.R. Tolkien');
  book3.rating = 8.8; // через сеттер

  // 2️⃣ Создаём библиотеку
  Library cityLib = Library('City Library');

  // 3️⃣ Добавляем книги
  cityLib.addBook(book1);
  cityLib.addBook(book2);
  cityLib.addBook(book3);

  // 4️⃣ Выводим список книг
  cityLib.showBooks();

  // 5️⃣ Количество книг
  print('Total books in library: ${cityLib.totalBooks}');
}

// =================== Book ===================
class Book {
  String _title;
  String _author;
  double _rating = 0.0;

  // Обычный конструктор
  Book(this._title, this._author);

  // Именованный конструктор
  Book.withRating(this._title, this._author, double rating) {
    this.rating = rating; // используем сеттер
  }

  // Геттеры
  String get title => _title;
  String get author => _author;
  double get rating => _rating;

  // Сеттер с проверкой
  set rating(double value) {
    if (value >= 0 && value <= 10) {
      _rating = value;
    } else {
      print('Rating must be between 0 and 10');
    }
  }

  // Метод вывода информации
  void displayInfo() {
    print('Title: $_title');
    print('Author: $_author');
    print('Rating: $_rating');
  }
}

// =================== Library ===================
class Library {
  String name;
  List<Book> _books = [];

  Library(this.name);

  void addBook(Book b) {
    _books.add(b);
  }

  void showBooks() {
    print('Library: $name');
    print('Books list:');
    for (int i = 0; i < _books.length; i++) {
      print('${i + 1}. ${_books[i].title}');
    }
  }

  int get totalBooks => _books.length;
}
