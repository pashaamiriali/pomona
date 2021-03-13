//all the tables start with their name and then the columns
const books = [
  "books",
  "id TEXT PRIMARY KEY",
  "readingList TEXT",
  "title TEXT",
  "author TEXT",
  "progress INTEGER",
  "summary TEXT",
];
const book_notes = [
  "book_notes",
  "id TEXT PRIMARY KEY",
  "book TEXT",
  "text TEXT"
];

const chapters = [
  "chapters",
  "id TEXT PRIMARY KEY",
  "book TEXT",
  "number INTEGER",
  "title TEXT",
  "progress INTEGER",
  "summary TEXT"
];
const chapter_notes = [
  "chapter_notes",
  "id TEXT PRIMARY KEY",
  "chapter TEXT",
  "text TEXT"
];

const reading_lists = [
  "reading_lists",
  "id TEXT PRIMARY KEY",
  "name TEXT",
  "bookCount INTEGER",
  "finishedBooksCount INTEGER"
];

const sections = [
  "sections",
  "id TEXT PRIMARY KEY",
  "chapter TEXT",
  "number INTEGER",
  "title TEXT",
  "progress INTEGER",
  "summary TEXT"
];

const section_notes = [
  "section_notes",
  "id TEXT PRIMARY KEY",
  "section TEXT",
  "text TEXT"
];

const List tables = [
  books,
  book_notes,
  chapters,
  chapter_notes,
  reading_lists,
  sections,
  section_notes,
];
