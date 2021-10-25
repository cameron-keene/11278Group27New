//
//  FishData.swift
//  Fish Friendly
//
//  Created by Sijia Li on 10/14/21.
//

import SwiftUI


struct FishDataView: View {
    var fishie: Fishie

    
    var body: some View {
            ScrollView {
                /*Text(fishie.fish_scientific)
                    .font(.subheadline)
                    .foregroundColor(.secondary)*/
                    
                
                //Divider()
                
                
                HStack() {
                    FishImage(image: Image("SampleFish"))
                    
                    //Spacer()
                }
                .offset(y:5)
                .padding()
                
                
                VStack(alignment: .leading) {
                    Text(fishie.fish_scientific)
                        .font(.title2)
                        .foregroundColor(.seaBlue)

                        //.foregroundColor(.secondary)
                    
                    Text("Environmental Status: " + fishie.fish_status)
                        .font(.title3)
                        //.font(.bold)
  
                    Text("Water Habitat: " + "Saltwater")
                        .font(.title3)
                    
                    Divider()
                    
                    Text("Fish Habitat:")
                        .font(.title3)
                    
                    
                    Text(fishie.fish_habitat)
                        //.multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        //.frame(maxWidth: 150, maxHeight: .infinity)
                        .padding(1)
                    
                    
                    Text("Fish Behavior:")
                        .font(.title3)
                    
                    
                    Text(fishie.fish_behavior)
                        .padding(1)
                    
                }
                .padding()
                
                
                

            }
            .navigationTitle(fishie.fish_name)
            //.navigationBarTitleDisplayMode(.inline)

            /*.toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        withAnimation {
                        }
                    }, label: {
                        Image(systemName: "chevron.compact.left")
                    })
                    
                }
            }*/
        }
}

struct FishDataView_Previews: PreviewProvider {
    static var previews: some View {
        FishDataView(fishie: fishies[1])
    }
}

