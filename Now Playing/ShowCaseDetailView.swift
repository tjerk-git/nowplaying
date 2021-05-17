//
//  ShowCaseView.swift
//  Now Playing
//
//  Created by Tjerk Dijkstra on 17/05/2021.
//

import SwiftUI


struct ShowCaseDetailView: View {
    let item: ShowCase
    
    var body: some View {
        ZStack(){
            getColor(type: item.type).ignoresSafeArea()
            ZStack(){
                VStack(){
                    Text(getTitle(type: item.type)).font(.largeTitle).bold()
                    Text(item.title).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(.semibold)
                    Text(item.subtitle).font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                }
            }
            .navigationTitle("Now Playing")
        }
        
    }
    
    func getTitle(type: String) -> String {
        var title = ""
        switch type {
            case "song":
                title = "🎮 Now playing"
            case "movie":
                title = "🎧 Now listening"
            case "book":
                title = "📖 Now reading"
            case "game":
                title = "🍿 Now showing"
            default:
                title = "🍿 Now showing"
        }
        return title
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

//struct ShowCaseDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        ShowCaseDetailView()
//    }
//}


