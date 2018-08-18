//
//  RegionRestriction.swift
//  ToYouTube
//
//  Created by Fernando Torcelly on 11/10/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import Foundation
import ObjectMapper

public class RegionRestriction: Mappable {
    
    open var allowed : [String]?
    open var blocked : [String]?
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        allowed <- map["allowed"]
        blocked <- map["blocked"]
    }
}
