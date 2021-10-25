//
//  HomeView.swift
//  Fish Friendly
//
//  Created by Sijia Li on 10/17/21.
//

import SwiftUI

struct HomeView: View {
    
    init() {
        //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        //Use this if NavigationBarTitle is with displayMode = .inline
        //UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.red]
    }
    
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color.seaBlue
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Rectangle()
                    .fill(Color.white)
                    //.stroke(Color.white, lineWidth: 10)
                    //.frame(width: 120, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    //.clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Spotlight")
                        .font(.title2)
                        .bold()
                    
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
                    
                    Divider()
                    
                    HStack {
                        Text("Fishing Trips")
                            .font(.title2)
                            .bold()


                        Button(action: {
                        }, label: {
                            Image(systemName: "chevron.compact.right")
                                .foregroundColor(Color.seaBlue)
                        })
                    }
                    
                    Divider()

                    
                    Text("You & the Environment")
                        .font(.title2)
                        .bold()


        
                    Spacer()
                    
                }
                .padding(10)
                
                
                
            }
            .navigationTitle("Fish Friendly")
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
        
            //.overlay()
        
        
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
