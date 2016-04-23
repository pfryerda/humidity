//
//  City.swift
//  Humidity
//
//  Created by Peter Fryer-Davis on 2016-04-23.
//  Copyright © 2016 Peter Fryer-Davis. All rights reserved.
//

import Foundation
import SWXMLHash

class City : NSObject {
    var nameEnglish : String!
    var nameFrench : String!
    var province : String!
    var code : String!
    
    init(nameEnglish : String, nameFrench : String, province : String, code : String) {
        super.init()
        self.nameEnglish = nameEnglish
        self.nameFrench = nameFrench
        self.province = province
        self.code = code
    }
    
    init(indexer : XMLIndexer) {
        let children = indexer.children
        let code = (indexer.element?.attributes.values[(indexer.element?.attributes.indexForKey("code"))!])!
        var nameEnglish = ""
        var nameFrench = ""
        var province = ""
        for child in children {
            let description = child.element?.name
            if description == "nameEn" {
                nameEnglish = (child.element?.text)!
            } else if description == "nameFr" {
                nameFrench = (child.element?.text)!
            } else {
                province = (child.element?.text)!
            }
        }
        
        super.init()
        self.nameEnglish = nameEnglish
        self.nameFrench = nameFrench
        self.province = province
        self.code = code
    }
}