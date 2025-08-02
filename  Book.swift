import Foundation  

 
struct Book: Identifiable {
    let id = UUID()

 
    var title: String
    var author: String
    var description: String

    var isRead: Bool

    static let sampleBooks: [Book] = [
        Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald", description: "A novel about the American Dream, wealth, and obsession.", isRead: false),
        Book(title: "To Kill a Mockingbird", author: "Harper Lee", description: "A classic novel exploring racial injustice in the American South.", isRead: true),
        Book(title: "1984", author: "George Orwell", description: "A dystopian social science fiction novel and cautionary tale.", isRead: false),
        Book(title: "Pride and Prejudice", author: "Jane Austen", description: "A romantic novel of manners written by Jane Austen.", isRead: true),
        Book(title: "The Hobbit", author: "J.R.R. Tolkien", description: "A fantasy novel and children's book.", isRead: false),
        Book(title: "Dune", author: "Frank Herbert", description: "A science fiction epic set in a distant future.", isRead: false),
        Book(title: "Sapiens: A Brief History of Humankind", author: "Yuval Noah Harari", description: "A non-fiction book that surveys the history of humankind.", isRead: true),
        Book(title: "The Lord of the Rings", author: "J.R.R. Tolkien", description: "An epic high-fantasy novel.", isRead: false),
        Book(title: "The Alchemist", author: "Paulo Coelho", description: "A philosophical novel about a shepherd boy's journey.", isRead: true),
        Book(title: "Becoming", author: "Michelle Obama", description: "A memoir by former First Lady of the United States Michelle Obama.", isRead: false)
    ]
}

