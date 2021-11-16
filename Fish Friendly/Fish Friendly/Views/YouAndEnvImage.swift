//
//  YouAndEnvImage.swift
//  Fish Friendly
//
//  Created by Owner on 11/16/21.
//

import SwiftUI

struct YouAndEnvImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()   //lets image resize
            .frame(width: 300, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            .overlay(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).stroke(Color.seaBlue, lineWidth: 5))
    }
}

struct YouAndEnvImage_Previews: PreviewProvider {
    static var previews: some View {
        FishImage(image: Image("YouAndEnv"))
    }
}

