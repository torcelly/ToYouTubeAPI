//
//  Details.swift
//  ToYouTube
//
//  Created by Fernando Torcelly on 11/10/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import Foundation
import ObjectMapper

public class Details: Mappable {
    
    open var duration : String?
    open var dimension : String?
    open var definition: String?
    open var caption: String?
    open var licensedContent : Bool?
    open var regionRestriction : RegionRestriction?
    open var contentRating : ContentRating?
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        duration <- map["duration"]
        dimension <- map["dimension"]
        definition <- map["definition"]
        caption <- map["caption"]
        licensedContent <- map["licensedContent"]
        regionRestriction <- map["regionRestriction"]
        contentRating <- map["contentRating"]
    }
}
