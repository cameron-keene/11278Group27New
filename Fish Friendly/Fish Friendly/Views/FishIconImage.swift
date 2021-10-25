//
//  FishImageView.swift
//  Fish Friendly
//
//  Created by Sijia Li on 10/14/21.
//

import SwiftUI

struct FishIconImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()   //lets image resize
            .frame(width: 90, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            //.offset(y: -5)
            //.clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            //.overlay(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).stroke(Color.seaBlue, lineWidth: 10))
    }
}

struct FishIconImage_Previews: PreviewProvider {
    static var previews: some View {
        FishImage(image: Image("SampleFish"))
    }
}

