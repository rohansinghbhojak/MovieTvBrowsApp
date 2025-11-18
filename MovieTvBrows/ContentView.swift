//
//  ContentView.swift
//  MovieTvBrows
//
//  Created by Rohan Bhojak  on 12/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab("Home", systemImage: "house"){
                
            }
            Tab("Upcomming", systemImage: "play.circle"){
                
            }
            Tab("Search", systemImage: "magnifyingglass"){
                
            }
            Tab("Download", systemImage: "arrow.down.to.line"){
                
            }
        }
    }
}

#Preview {
    ContentView()
}
