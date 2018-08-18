//
//  Thumbnail.swift
//  ToYouTube
//
//  Created by Fernando Torcelly on 11/10/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import Foundation
import ObjectMapper

public class Thumbnail: Mappable {
    
    open var url : String?
    open var width : UInt?
    open var height: UInt?
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        url <- map["url"]
        width <- map["width"]
        height <- map["height"]
    }
}
