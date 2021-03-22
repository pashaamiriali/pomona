//all the tables start with their name and then the columns
class Tables {
  static const books = [
    "books",
    "id TEXT PRIMARY KEY",
    "readingList TEXT",
    "title TEXT",
    "author TEXT",
    "progress INTEGER",
    "summary TEXT",
  ];
  static const book_notes = [
    "book_notes",
    "id TEXT PRIMARY KEY",
    "book TEXT",
    "text TEXT"
  ];

  static const chapters = [
    "chapters",
    "id TEXT PRIMARY KEY",
    "book TEXT",
    "number INTEGER",
    "title TEXT",
    "progress INTEGER",
    "summary TEXT"
  ];
  static const chapter_notes = [
    "chapter_notes",
    "id TEXT PRIMARY KEY",
    "chapter TEXT",
    "text TEXT"
  ];

  static const reading_lists = [
    "reading_lists",
    "id TEXT PRIMARY KEY",
    "name TEXT",
    "bookCount INTEGER",
    "finishedBooksCount INTEGER"
  ];

  static const sections = [
    "sections",
    "id TEXT PRIMARY KEY",
    "chapter TEXT",
    "number INTEGER",
    "title TEXT",
    "progress INTEGER",
    "summary TEXT"
  ];

  static const section_notes = [
    "section_notes",
    "id TEXT PRIMARY KEY",
    "section TEXT",
    "text TEXT"
  ];
}
