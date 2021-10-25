//
//  ImportData.swift
//  Fish Friendly
//
//  Created by Sijia Li on 10/25/21.
//

import Foundation

var fishies: [Fishie] = load("fish_data.json")

func load<T: Decodable>(_ filename: String) -> T {
    print("hi")
    
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        //print(fishies)
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
    
}


/*public class Dataloader {

    @Published var fishies = [Fishie]()
    
    init() {
        load()
        sort()
    }
    

    func load() {
        if let fileLocation = Bundle.main.url(forResource: "fish_data", withExtension: "json") {
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let datafromJson = try jsonDecoder.decode([Fishie].self, from: data) //self so we dont make new array
                self.fishies = datafromJson
            } catch  {
                print(error)
            }
            
        }
    }
    
    func sort() {
        self.fishies = self.fishies.sorted(by: {$0.fish_name < $1.fish_name})   //compares first obj name to second sort alphabetely
    }
    
}*/
