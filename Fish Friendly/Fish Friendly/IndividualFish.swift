//
//  IndividualFish.swift
//  Fish Friendly
//
//  Created by Sijia Li on 10/14/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct Fish: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var sciName: String
    var dangerStat: Int
    var typeWater: Int
    var description: String
    
    private var imageName: String
    var image: Image {
        Image("SampleFish")
    }
}
