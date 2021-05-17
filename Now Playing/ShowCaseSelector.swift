//
//  ShowCaseSelector.swift
//  Now Playing
//
//  Created by Tjerk Dijkstra on 17/05/2021.
//

import SwiftUI

struct ShowCaseSelector: View {
    let item: ShowCase
    
    var body: some View {
        ZStack(){
            getColor(type: item.type).ignoresSafeArea()
            ZStack(){
                VStack(){
                    Text(item.title).foregroundColor(.white)
                }
            }
            .navigationTitle("Your profile")
        }
    }
    
    func getColor(type: String) -> Color {
        var color = Color.red
        switch type {
            case "song":
                color = Color.red
            case "movie":
                color = Color.blue
            case "book":
                color = Color.green
            case "game":
                color = Color.yellow
            default:
                color = Color.red
        }
        return color
    }
}

//struct ShowCaseSelector_Previews: PreviewProvider {
//    static var previews: some View {
//        ShowCaseSelector()
//    }
//}
