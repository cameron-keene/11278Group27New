//
//  FishData.swift
//  Fish Friendly
//
//  Created by Sijia Li on 10/14/21.
//

import SwiftUI




struct FishData: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                Text("Scientific Name")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                
                
                Divider()
                
                
                HStack() {
                    FishImage(image: Image("SampleFish"))
                    
                    //Spacer()
                }
                .offset(y:5)
                
                
                VStack(alignment: .leading) {
                    Text("Environmental Status: " + "Endangered")
                        .font(.title3)
                        //.font(.bold)
  
                    Text("Water Habitat: " + "Saltwater")
                        .font(.title3)
                    
                    Divider()
                    
                    Text("Description:")
                        .font(.title3)
                    
                    
                    Text("Description")
                        .font(.title3)
                }
                .offset(x:10 , y: 10)
                
                
                

            }
            .navigationTitle("Fish Name")
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

struct FishData_Previews: PreviewProvider {
    static var previews: some View {
        FishData()
    }
}

