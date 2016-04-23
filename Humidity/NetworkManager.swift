//
//  NetworkManager.swift
//  Humidity
//
//  Created by Peter Fryer-Davis on 2016-04-23.
//  Copyright © 2016 Peter Fryer-Davis. All rights reserved.
//

import Foundation
import SWXMLHash

class NetworkManager {
    
    static let sharedInstance = NetworkManager()
    let session = NSURLSession.sharedSession()

    func getCityIndex() {
        let indexURL = NSURL(string: "http://dd.weatheroffice.ec.gc.ca/citypage_weather/xml/siteList.xml")
        let task = session.dataTaskWithURL(indexURL!, completionHandler: { (data, response, error) -> Void in
            // Do something with the data
            if error != nil {
                print("ERROR --")
                print(error)
            } else {
                print("Success --")
                print(data)
                
                let xml = SWXMLHash.parse(data!);
                // Array of each city index
                let array = xml["siteList"]["site"].all
                var newArray = [City]()
                
                // Turn each element of array into City
                for elem in array {
                    let city = City.init(indexer: elem)
                    newArray.append(city)
                }
                print("end")
            }
        })
        
        task.resume()
    }
    
}