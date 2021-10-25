//
//  BottomTabView.swift
//  Fish Friendly
//
//  Created by Sijia Li on 10/14/21.
//

import SwiftUI

struct BottomTabView: View {
    init() {
        UITabBar.appearance().barTintColor = UIColor.seaBlue
        UITabBar.appearance().unselectedItemTintColor = UIColor.white

        //UITabBar.appearance().tintColor = .green
        
    }
    var body: some View {
        VStack {
            TabView{
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                FishSearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                FavFishView()
                    .tabItem {
                        Image(systemName: "star.fill")
                        Text("Favorites")
                    }
                
                FishDataView(fishie: fishies[0])
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                            .accentColor(.white)

                    }
            }
            .accentColor(.white)
                
        }
    }
}

struct BottomTabView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabView()
    }
}
