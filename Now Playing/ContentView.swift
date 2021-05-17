//
//  ContentView.swift
//  Now Playing
//
//  Created by Tjerk Dijkstra on 17/05/2021.
//

import SwiftUI

let showCases = ShowCases.standard
//let friends = Friends.standard
// let items = showCases.items

struct ContentView: View {

    var body: some View {
        NavigationView(){
            
            HStack(){
                NavigationLink(destination: EditShowCaseView()) {
                    Text("You")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .frame(width: 100, height: 100)
                        .foregroundColor(Color.black)
                        .background(Color.white)
                        .clipShape(Circle())
                }
                
                NavigationLink(destination: ShowCaseView()) {
                    Text("Leon")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .frame(width: 100, height: 100)
                        .foregroundColor(Color.black)
                        .background(Color.white)
                        .clipShape(Circle())
                }
            }.padding(10)
         
              
            .navigationBarTitle("Friends", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
