//
//  FishData.swift
//  Fish Friendly
//
//  Created by Sijia Li on 10/14/21.
//

import SwiftUI




struct FishSearchView: View {
    
    
    init() {
        //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        //Use this if NavigationBarTitle is with displayMode = .inline
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.seaBlue]
        
        
        Theme.navigationBarColors(background: .seaBlue, titleColor: .white)

    }
    
    @State var searchText = ""
    
    var body: some View {
        
        
        NavigationView {
            
            ZStack {
                Color.seaBlue
                    .edgesIgnoringSafeArea(.all)
            
                ScrollView {

                    SearchBarView(text: $searchText)
                    
                    MultiIconView(searchTerm: searchText,fid: 1 ,isf: false)
                        .navigationTitle("Search Fish")
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

struct FishSearchView_Preview: PreviewProvider {
    static var previews: some View {
        FishSearchView()
    }
}
