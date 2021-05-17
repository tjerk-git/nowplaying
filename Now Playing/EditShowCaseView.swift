//
//  EditShowCaseView().swift
//  Now Playing
//
//  Created by Tjerk Dijkstra on 17/05/2021.
//

import SwiftUI

struct EditShowCaseView: View {
    
    @State var name = ""
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    @State private var image: Image?
    
    let showCases = ShowCases.standard
    
    var body: some View {
        NavigationView(){
            Form(){
                TextField("Name", text: $name)
            }
    
            ForEach(showCases.items) { item in
                NavigationLink(destination: ShowCaseSelector(item: item)) {
                }
            }
               
            }.padding(10)
         
            .navigationBarTitle("Friends", displayMode: .inline)
        }
    
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
    }
}

struct EditShowCaseView_Previews: PreviewProvider {
    static var previews: some View {
        EditShowCaseView()
    }
}
