const String books =
    "CREATE TABLE IF NOT EXISTS books (id TEXT PRIMARY KEY, readingList TEXT, title TEXT, author TEXT, progress INTEGER, summary TEXT)";
const String book_notes =
    "CREATE TABLE IF NOT EXISTS book_notes (id TEXT PRIMARY KEY, book TEXT, text TEXT)";
const String chapters =
    "CREATE TABLE IF NOT EXISTS chapters (id TEXT PRIMARY KEY, book TEXT, number INTEGER, title TEXT, progress INTEGER, summary TEXT)";
const String chapter_notes =
    "CREATE TABLE IF NOT EXISTS chapter_notes (id TEXT PRIMARY KEY, chapter TEXT, text TEXT)";
const String reading_lists =
    "CREATE TABLE IF NOT EXISTS reading_lists (id TEXT PRIMARY KEY, name TEXT, bookCount INTEGER, finishedBooksCount INTEGER";
const String sections =
    "CREATE TABLE IF NOT EXISTS sections (id TEXT PRIMARY KEY, chapter TEXT, number INTEGER, title TEXT, progress INTEGER, summary TEXT)";
const String section_notes =
    "CREATE TABLE IF NOT EXISTS section_notes (id TEXT PRIMARY KEY, section TEXT, text TEXT)";
const List tables = [
  books,
  book_notes,
  chapters,
  chapter_notes,
  reading_lists,
  sections,
  section_notes,
];
