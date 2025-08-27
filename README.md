# 📚📖 Book Tracking App
## Project by: Tamo Marvin
### This is an iOS app crafted with SwiftUI, designed to help you track, manage, and edit your personal book collection.
<div align ="justify">
### Overview & Purpose
 This project showcases essential SwiftUI principles for creating a data-driven, multi-screen application. The main aim was to develop a user-friendly interface that makes it easy to manage a list of books. A standout feature is the ability to edit book details, with those changes instantly reflected throughout the app.

### Key Features
**Book List:** The main screen features a scrollable list of books, complete with their titles and authors.  
 **Book Details:** Tapping on a book takes you to a detail screen that displays its full description and reading status.
 - **Read Status Toggle:** A button on the detail screen lets you mark a book as "read" or "unread."
 - **Live Editing:** A dedicated editing screen (EditBookView) allows users to change a book's title, author, and description.

 - **Automatic Updates:** Any changes made in the editing screen are immediately shown on both the detail screen and the main book list, demonstrating a solid data flow.

 ### Core Concepts & Architecture  
 This application is built using the Model-View-ViewModel (MVVM) architecture, which keeps the app's logic separate from its user interface. The project served as a hands-on learning experience to grasp the following SwiftUI data flow concepts:
- **ObservableObject & @Published:** The BookListViewModel class conforms to ObservableObject and utilizes the @Published property wrapper to communicate changes to the book list, ensuring all observing views stay updated.

 - **@StateObject:** This property wrapper is employed in the top-level BookListView to create and manage the BookListViewModel, ensuring that the data source for the entire app remains consistent.

 - **@Binding:** This powerful two-way data connection allows a child view (like EditBookView) to directly modify a book's properties owned by a parent view, with changes reflected instantly. Think of it as a "shared pencil" that makes editing seamless.

 - **@ObservedObject:** This is used in the BookDetailView to keep track of changes in the book details, ensuring everything stays in sync.


---

 
---

How to Run the App
Prerequisites: Ensure you have Xcode installed on your Mac.

Clone the Repository: Open Terminal and clone the repository 
</div>
