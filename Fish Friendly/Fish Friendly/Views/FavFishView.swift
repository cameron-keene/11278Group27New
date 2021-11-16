//
//  FavFishView.swift
//  Fish Friendly
//
//  Created by Sijia Li on 10/18/21.
//

import SwiftUI




struct FavFishView: View {

    init() {
        //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        //Use this if NavigationBarTitle is with displayMode = .inline
        //UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.red]
    }
    
    @State var searchText = ""
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color.seaBlue
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                /*VStack {
                Spacer()
                Rectangle()
                    .fill(Color.white)
                    //.stroke(Color.white, lineWidth: 10)
                    .frame(width: 370, height: 535, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    //.clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                
                }*/
            
                ScrollView {
                    
                    SearchBarView(text: $searchText)
                    
                    MultiIconView(searchTerm: searchText,fid: 1,isf: true)
                        .navigationTitle("Favorite Fish")
                        .toolbar {
                            ToolbarItem(placement: .navigationBarLeading) {
                                Button(action: {
                                    withAnimation {
                                    }
                                }, label: {
                                    Image(systemName: "chevron.compact.left")
                                })
                            }
                        }
                }
            }
            
            
        }
        
        
        
    }
}

struct FavFishView_Previews: PreviewProvider {
    static var previews: some View {
        FavFishView()
    }
}

