//
//  Location.swift
//  ToYouTube
//
//  Created by Fernando Torcelly on 11/10/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import Foundation
import ObjectMapper

public class Location: Mappable {
    
    open var latitude: Double?
    open var longitude: Double?
    open var altitude: Double?
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        latitude <- map["latitude"]
        longitude <- map["longitude"]
        altitude <- map["altitude"]
    }
}
