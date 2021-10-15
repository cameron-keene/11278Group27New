//
//  BottomTabView.swift
//  Fish Friendly
//
//  Created by Sijia Li on 10/14/21.
//

import SwiftUI

struct BottomTabView: View {
    init() {
        UITabBar.appearance().barTintColor = UIColor.black
        //UITabBar.appearance().tintColor = .green
        
    }
    var body: some View {
        TabView{
            Text("Home")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            
            
            Text("Favorites")
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Favorites")
                }
            
            Text("Setting")
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                        .accentColor(.white)

                }
        }
        .accentColor(.white)
    }
}

struct BottomTabView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabView()
    }
}
