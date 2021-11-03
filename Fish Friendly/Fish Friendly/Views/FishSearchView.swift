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
                    
                    SearchBarView(text: .constant(""))
                    
                    MultiIconView()
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
