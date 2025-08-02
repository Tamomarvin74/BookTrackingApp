# Book Tracking App
## Project by: Tamo Marvin
### An iOS application built with SwiftUI to track, manage, and edit a personal library of books.
<div align ="justify">
Overview & Purpose
This project demonstrates core SwiftUI principles for building a data-driven, multi-screen application. The main goal was to create a user-friendly interface for managing a list of books, with the key feature of being able to edit book details and have those changes automatically reflected throughout the app.

Key Features
Book List: A main screen displaying a scrollable list of books with their titles and authors.

Book Details: Tapping on a book navigates to a detail screen showing its full description and read status.

Read Status Toggle: A button on the detail screen to mark a book as "read" or "unread."

Live Editing: A dedicated editing screen (EditBookView) allows users to modify a book's title, author, and description.

Automatic Updates: Changes made in the edit screen are immediately reflected on both the detail screen and the main book list, showcasing a robust data flow.

Core Concepts & Architecture
This application is built using the Model-View-ViewModel (MVVM) architecture, which separates the app's logic from its user interface. The project was a hands-on learning experience to master the following SwiftUI data flow concepts:

ObservableObject & @Published: The BookListViewModel class conforms to ObservableObject and uses the @Published property wrapper to broadcast changes to the list of books, ensuring all observing views are kept up to date.

@StateObject: This property wrapper is used in the top-level BookListView to create and own the BookListViewModel, guaranteeing that the data source for the entire app remains persistent.

@Binding: This is a powerful two-way connection to data. It was used to allow a child view (like EditBookView) to directly modify a book's properties owned by a parent view, with changes instantly reflected. This is the "shared pencil" that enables seamless editing.

@ObservedObject: This is used in the BookDetailView to observe the existing BookListViewModel that was created in the parent BookListView, giving it access to the shared data without creating a new instance.

---

 
---

How to Run the App
Prerequisites: Ensure you have Xcode installed on your Mac.

Clone the Repository: Open Terminal and clone the repository 
</div>
