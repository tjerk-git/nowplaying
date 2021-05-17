//
//  Friends.swift
//  Now Playing
//
//  Created by Tjerk Dijkstra on 17/05/2021.
//

import Foundation

struct Friend: Identifiable {
    let id = UUID()
    let name: String
    let showCases: Array<ShowCase>
}

class Friends : ObservableObject {
    static let standard = Friends()
    let showCases = ShowCases.standard.items
    
    @Published public var items = [Friend]()
    
    init(){
        items.append(Friend(name : "Leon", showCases: showCases))
    }
}
