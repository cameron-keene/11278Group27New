//
//  FishIconView.swift
//  Fish Friendly
//
//  Created by Sijia Li on 10/17/21.
//

import SwiftUI

struct FishIconView: View {
    var fishie: Fishie
    var temppp: Int
    //var image: Image

    
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
                        print("tappedddd")
                        arrf.append(temppp)
                        print(temppp)
                        print(arrf)
                        //print(fishie)
                    })
                    {
                        Image(systemName: "star")
                            .opacity(0.5)
                            .foregroundColor(Color.gray)
                            .font(.system(size: 23))
                    }.offset(x: 36, y: 30)
                    
                    
                    
                    
                    
                    
//                    Button(action: {
//                        print("tapped")
//                        //arrf.append(fishie)
//                    }
//
//                    , label: {
//                        Image(systemName: "star")
//                            .opacity(0.5)
//                            .foregroundColor(Color.gray)
//                            .font(.system(size: 18))
//
//                    })
//                    .offset(x: 36, y: 24)   //ruins button taps //need to fix!
                    /*.onTapGesture {
                        print("Show details for user")
                    }*/
                }
                
                
                //image
                //FishImage(image: Image("SampleFish"))
                //image: Image("SampleFish")
                FishIconImage(image: Image("SampleFish"))
                //.resizable()   //lets image resize
                    .frame(width: 90, height: 90, alignment: .center)
                    .offset(y: -5)
                
                
                Text(fishie.fish_name)
                    .font(.custom("Noteworthy", size: 13))
                    .offset(y: -20)
                    .multilineTextAlignment(.center)
                    .frame(width: 90, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            }

            
            

        }
        .frame(width: 115, height: 115, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct FishIconView_Previews: PreviewProvider {
    static var previews: some View {
        FishIconView(fishie: fishies[1], temppp: 1)

        //FishIconView(image: Image("SampleFish"))
    }
}
