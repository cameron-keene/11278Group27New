//
//  FishData.swift
//  Fish Friendly
//
//  Created by Sijia Li on 10/14/21.
//

import SwiftUI




struct FishSearchView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                HStack() {
                    
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .fill(Color.blue)
                        .frame(width: 150, height: 150, alignment: .leading)
                    
                    Text("")

                }
                .navigationBarTitle("Fish Name")
                .toolbar {
                    Button("Back") {}
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




/*Text("Fish Name")
    .font(.title)
    .foregroundColor(.white)
    .bold()
Text("Scientific Fish Name")
    .font(.footnote)*/
