//
//  ContentView.swift
//  newnew
//
//  Created by Richard on 2023-01-04.
//  Copyright © 2023 Richard. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  init() {
      UITabBar.appearance().barTintColor = UIColor.black
  }
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            zoo()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Zoo")
                }
            friends()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Friends")
                }
            shop()
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Shop")
                }
        }
        .accentColor(.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
