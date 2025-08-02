import SwiftUI

 
struct BookListView: View {
    
    @StateObject var viewModel = BookListViewModel()

    var body: some View {
         
        NavigationView {
           
            List {
                
                ForEach($viewModel.books) { $book in
                    
                    NavigationLink(destination: BookDetailView(book: $book, viewModel: viewModel)) {
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text(book.title)
                                    .font(.headline)
                                Text(book.author)
                                
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                            Spacer()

                            
                            if book.isRead {
                                Image(systemName: "checkmark.circle.fill")
                                
                                    .foregroundColor(.green)
                                
                            }
                        }
                        .padding(.vertical, 5)
                    }
                }
            }
            .navigationTitle("My Books")
        }
    }
}

 
struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()  
    }
}

