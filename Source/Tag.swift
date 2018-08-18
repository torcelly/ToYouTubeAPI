//
//  Tag.swift
//  ToYouTube
//
//  Created by Fernando Torcelly on 11/10/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import Foundation
import ObjectMapper

public class Tag: Mappable {
    
    open var tag: String?
    open var categoryRestricts: [String]?
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        tag <- map["tag"]
        categoryRestricts <- map["categoryRestricts"]
    }
}
