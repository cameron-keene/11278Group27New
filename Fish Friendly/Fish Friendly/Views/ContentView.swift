//
//  ContentView.swift
//  Fish Friendly
//
//  Created by Sijia Li on 10/13/21.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        BottomTabView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*class ViewController: UIViewController {
    override func viewDidLoad() {
        let data = Dataloader().fishies
        print(data)
    }
}*/
