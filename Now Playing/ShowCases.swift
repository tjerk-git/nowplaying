//
//  ShowCases.swift
//  Now Playing
//
//  Created by Tjerk Dijkstra on 17/05/2021.
//

import Foundation

struct ShowCase: Identifiable {
    let id = UUID()
    let type: String
    let title: String
    let subtitle: String
    let lastUpdated: Date
    let userID: Int
}

class ShowCases : ObservableObject {
    static let standard = ShowCases()
    
    @Published public var items = [ShowCase]()
    
    init(){
        items.append(ShowCase(type: "song", title: "Red Hot Chili Peppers", subtitle: "", lastUpdated: Date(), userID: 1))
        items.append(ShowCase(type: "movie", title: "Austin Powers", subtitle: "", lastUpdated: Date(), userID: 1))
        items.append(ShowCase(type: "game", title: "The Last of us 2", subtitle: "", lastUpdated: Date(), userID: 1))
        items.append(ShowCase(type: "book", title: "The Lord of the rings", subtitle: "", lastUpdated: Date(), userID: 1))
    }
}
