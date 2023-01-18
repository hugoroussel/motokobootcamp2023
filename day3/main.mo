import Book "./book";
import List "mo:base/List";
actor {

    var library = List.nil<Book.Book>();
    let book : Book.Book = {title = "the green hills of africa"; pages=100};

    public func create_book(title: Text, pages: Nat) : async Book.Book {
        return {title = title; pages = pages}
    };

    public func add_book(book: Book.Book): () {
        library := List.push(book, library);
    };

    public func get_books(): async [Book.Book] {
        return List.toArray(library);
    };

}