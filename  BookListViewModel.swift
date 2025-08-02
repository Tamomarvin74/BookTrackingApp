import Foundation
import Combine

 
class BookListViewModel: ObservableObject {
 
    @Published var books: [Book]

     
    init() {
        self.books = Book.sampleBooks
    }

  
    func toggleReadStatus(for book: Book) {
        if let index = books.firstIndex(where: { $0.id == book.id }) {
            books[index].isRead.toggle()
        }
    }

     func addNewBook(title: String, author: String, description: String, isRead: Bool) {
        let newBook = Book(title: title, author: author, description: description, isRead: isRead)
        books.append(newBook) 
    }
}

