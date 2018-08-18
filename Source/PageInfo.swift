//
//  PageInfo.swift
//  ToYouTube
//
//  Created by Fernando Torcelly on 11/10/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import Foundation
import ObjectMapper

public class PageInfo: Mappable {
    
    open var totalResults : Int?
    open var resultsPerPage : Int?
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        totalResults <- map["totalResults"]
        resultsPerPage <- map["resultsPerPage"]
    }
}
