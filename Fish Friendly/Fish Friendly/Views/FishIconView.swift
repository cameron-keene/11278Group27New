//
//  FishIconView.swift
//  Fish Friendly
//
//  Created by Sijia Li on 10/17/21.
//

import SwiftUI

struct FishIconView: View {
    var image: Image
    
    var body: some View {
        ZStack {
            
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .strokeBorder(Color.seaBlue, lineWidth: 5)
                //.stroke(Color.seaBlue, lineWidth: 10)
                .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(Color.white))
                .frame(width: 115, height: 115, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))

            
            VStack{
                HStack {
                    
                    Button(action: {
                        print("tapped")
                    }, label: {
                        Image(systemName: "star")
                            .opacity(0.5)
                            .foregroundColor(Color.gray)
                            .font(.system(size: 16))


                    })
                    .offset(x: 36, y: 25)
                    
                }
                
                
                image
                    .resizable()   //lets image resize
                    .frame(width: 90, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .offset(y: -5)
                
                
                Text("Fish Name")
                    .font(.custom("Noteworthy", size: 15))
                    .offset(y: -20)
                
                
            }

            
            

        }
        .frame(width: 115, height: 115, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct FishIconView_Previews: PreviewProvider {
    static var previews: some View {
        FishIconView(image: Image("SampleFish"))
    }
}
