//
//  Fishies.swift
//  Fish Friendly
//
//  Created by Sijia Li on 10/25/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct Fishie: Equatable, Hashable, Codable {  //id needed Identifiable
    //var id: Int
    var fish_name: String
    var fish_scientific: String
    var fish_status: String
    var fish_appearence: String
    var fish_habitat: String
    var fish_behavior: String
    var fish_additional: String
    
    
    /*private var imageName: String
    var image: Image {
        Image(imageName)
    }*/

}
