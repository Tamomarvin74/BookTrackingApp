import SwiftUI

 
struct BookDetailView: View {
    
    @Binding var book: Book
 
    @ObservedObject var viewModel: BookListViewModel
 
    @State private var isShowingEditSheet = false
    

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {

                HStack {
                    Spacer()
                    Button("Edit") {
                        isShowingEditSheet = true
                    }
                    .font(.headline)
                    
                    .foregroundColor(.blue)
                    
                    .padding(.horizontal)
                }
                .padding(.bottom, 10)
 
                Text(book.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 5)

              
                Text("by \(book.author)")
                    .font(.title2)
                    .foregroundColor(.secondary)
                    .padding(.bottom, 10)

                Divider()

                Text(book.description)
                
                    .font(.body)
                    .padding(.bottom, 20)
                
  
                Button(action: {
                     
                    viewModel.toggleReadStatus(for: book)
                    print("Toggled read status for: \(book.title). New status: \(book.isRead)")
                    
                }) {
                    HStack {
                        
                        Image(systemName: book.isRead ? "book.closed.fill" : "book.closed")
                        
                        Text(book.isRead ? "Mark as Unread" : "Mark as Read")
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(book.isRead ? Color.gray : Color.blue)
                    .cornerRadius(10)                    }
            }
            .padding()
        }
        .navigationTitle("")
        
        .navigationBarTitleDisplayMode(.inline)
         
        .sheet(isPresented: $isShowingEditSheet) {
            
            EditBookView(title: $book.title, author: $book.author, description: $book.description)
        }
    }
}


struct BookDetailView_Previews: PreviewProvider {
     
    @State static var previewBook = Book.sampleBooks[0]

    static var previews: some View {
         
        NavigationView {
             
            BookDetailView(book: $previewBook, viewModel: BookListViewModel())
        }
    }
}

