//
//  FishImageView.swift
//  Fish Friendly
//
//  Created by Sijia Li on 10/14/21.
//

import SwiftUI

struct FishImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()   //lets image resize
            .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            .overlay(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).stroke(Color.seaBlue, lineWidth: 10))
    }
}

struct FishImage_Previews: PreviewProvider {
    static var previews: some View {
        FishImage(image: Image("SampleFish"))
    }
}
