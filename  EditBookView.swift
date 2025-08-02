import SwiftUI
 
struct EditBookView: View {
 
    @Environment(\.dismiss) var dismiss
 
    @Binding var title: String
    @Binding var author: String
    @Binding var description: String

    var body: some View {
         NavigationView {
             
            Form {
                 Section(header: Text("Book Details").font(.headline)) {
                     
                    TextField("Title", text: $title)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.words)
                    TextField("Author", text: $author)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.words)

                     TextEditor(text: $description)
                        .frame(minHeight: 100)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.sentences)
                 }
            }
            .navigationTitle("Edit Book")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()                      }
                }
                 ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                         
                        dismiss()  
                    }
                }
            }
        }
    }
}
 
struct EditBookView_Previews: PreviewProvider {
    
    @State static var previewTitle = "The Preview Book"
    @State static var previewAuthor = "Preview Author"
    @State static var previewDescription = "This is a dummy description for the preview of the edit screen."

    static var previews: some View {
        
        EditBookView(title: $previewTitle, author: $previewAuthor, description: $previewDescription)
    }
}

