//
//  MultiIconView.swift
//  Fish Friendly
//
//  Created by Sijia Li on 10/17/21.
//

import SwiftUI

struct MultiIconView: View {
    var searchTerm: String
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    
    var body: some View {
        ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach((0...fishies.count-1).filter({"\($0)".contains(searchTerm) || searchTerm.isEmpty}), id: \.self)
                            { index in
                            NavigationLink(destination: FishDataView(fishie: fishies[index])) {
                                FishIconView(fishie: fishies[index])
                            }
                            .buttonStyle(PlainButtonStyle())
                        }

                    }
                }
        .padding()
    }
}

struct MultiIconView_Previews: PreviewProvider {
    static var previews: some View {
        MultiIconView(searchTerm: String())
    }
}
/*VStack{
    HStack{
        NavigationLink(destination: FishDataView(fishie: fishies[1])) {
            FishIconView(fishie: fishies[1])
        }
        .buttonStyle(PlainButtonStyle())
        NavigationLink(destination: FishDataView(fishie: fishies[2])) {
            FishIconView(fishie: fishies[2])
        }
        .buttonStyle(PlainButtonStyle())
        NavigationLink(destination: FishDataView(fishie: fishies[3])) {
            FishIconView(fishie: fishies[3])
        }
        .buttonStyle(PlainButtonStyle())
    }
    HStack{
        NavigationLink(destination: FishDataView(fishie: fishies[1])) {
            FishIconView(fishie: fishies[1])
        }
        .buttonStyle(PlainButtonStyle())
        NavigationLink(destination: FishDataView(fishie: fishies[2])) {
            FishIconView(fishie: fishies[2])
        }
        .buttonStyle(PlainButtonStyle())
        NavigationLink(destination: FishDataView(fishie: fishies[3])) {
            FishIconView(fishie: fishies[3])
        }
        .buttonStyle(PlainButtonStyle())
    }
    HStack{
        NavigationLink(destination: FishDataView(fishie: fishies[1])) {
            FishIconView(fishie: fishies[1])
        }
        .buttonStyle(PlainButtonStyle())
        NavigationLink(destination: FishDataView(fishie: fishies[2])) {
            FishIconView(fishie: fishies[2])
        }
        .buttonStyle(PlainButtonStyle())
        NavigationLink(destination: FishDataView(fishie: fishies[3])) {
            FishIconView(fishie: fishies[3])
        }
        .buttonStyle(PlainButtonStyle())
    }
    HStack{
        NavigationLink(destination: FishDataView(fishie: fishies[1])) {
            FishIconView(fishie: fishies[1])
        }
        .buttonStyle(PlainButtonStyle())
        NavigationLink(destination: FishDataView(fishie: fishies[2])) {
            FishIconView(fishie: fishies[2])
        }
        .buttonStyle(PlainButtonStyle())
        NavigationLink(destination: FishDataView(fishie: fishies[3])) {
            FishIconView(fishie: fishies[3])
        }
        .buttonStyle(PlainButtonStyle())
    }
}*/
