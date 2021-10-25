//
//  Fish_FriendlyApp.swift
//  Fish Friendly
//
//  Created by Sijia Li on 10/13/21.
//

import SwiftUI

@main
struct Fish_FriendlyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


extension Color {
    static let seaBlue = Color(red: 119/255, green: 158/255, blue: 203/255)
}
extension UIColor {
    static let seaBlue = UIColor(red: 119/255, green: 158/255, blue: 203/255, alpha:1.0)
}

class Theme {
    static func navigationBarColors(background : UIColor?,
       titleColor : UIColor? = nil, tintColor : UIColor? = nil ){
        
        let navigationAppearance = UINavigationBarAppearance()
        navigationAppearance.configureWithOpaqueBackground()
        navigationAppearance.backgroundColor = background ?? .clear
        
        navigationAppearance.titleTextAttributes = [.foregroundColor: titleColor ?? .black]
        navigationAppearance.largeTitleTextAttributes = [.foregroundColor: titleColor ?? .black]
       
        UINavigationBar.appearance().standardAppearance = navigationAppearance
        UINavigationBar.appearance().compactAppearance = navigationAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationAppearance

        UINavigationBar.appearance().tintColor = tintColor ?? titleColor ?? .black
    }
}

func random(_ n:Int) -> Int {
    return Int(arc4random_uniform(UInt32(n)))
}

/*func getImage() {
    let url = NSURL(string: "https://ajax.googleapis.com/ajax/services/search/images?v=1.0&q=\(placeName)")
    let request = NSURLRequest(URL: url!)
    NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()){ (response, go, error) -> Void in
    let go = NSJSONSerialization.JSONObjectWithData(go, options: NSJSONReadingOptions.AllowFragments, error: nil) as [String:AnyObject]
        let responseData = go["responseData"] as [String:AnyObject]
        // let results = responseData["results"] as [String:AnyObject]
        // let imageURL = results["unescapedUrl"] as String
        println(responseData)
}
}
*/
