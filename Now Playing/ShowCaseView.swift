//
//  ShowCaseView.swift
//  Now Playing
//
//  Created by Tjerk Dijkstra on 17/05/2021.
//

import SwiftUI

struct ShowCaseView: View {
    var body: some View {
        TabView {
            ForEach(showCases.items) { item in
                ShowCaseDetailView(item: item)
            }
          }
        .tabViewStyle(PageTabViewStyle())
        }
}


struct ShowCaseView_Previews: PreviewProvider {
    static var previews: some View {
        ShowCaseView()
    }
}
