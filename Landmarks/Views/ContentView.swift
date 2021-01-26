//
//  ContentView.swift
//  Landmarks
//
//  Created by Yamaguchi Tokio on 2021/01/05.
//

import SwiftUI

// ContentView
// - conforms ti the View Control
// - describes the view's contents and layout
struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

// ContentView_Previews
// - declears a preview for the view
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
