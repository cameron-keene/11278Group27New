//
//  MultiIconView.swift
//  Fish Friendly
//
//  Created by Sijia Li on 10/17/21.
//

import SwiftUI

struct MultiIconView: View {
    var body: some View {
        VStack{
            HStack{
                FishIconView(image: Image("SampleFish"))
                FishIconView(image: Image("SampleFish"))
                FishIconView(image: Image("SampleFish"))
            }
            HStack{
                FishIconView(image: Image("SampleFish"))
                FishIconView(image: Image("SampleFish"))
                FishIconView(image: Image("SampleFish"))
            }
            HStack{
                FishIconView(image: Image("SampleFish"))
                FishIconView(image: Image("SampleFish"))
                FishIconView(image: Image("SampleFish"))
            }
            HStack{
                FishIconView(image: Image("SampleFish"))
                FishIconView(image: Image("SampleFish"))
                FishIconView(image: Image("SampleFish"))
            }
        }
        .padding()
    }
}

struct MultiIconView_Previews: PreviewProvider {
    static var previews: some View {
        MultiIconView()
    }
}
