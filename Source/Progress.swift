//
//  Progress.swift
//  ToYouTube
//
//  Created by Fernando Torcelly on 11/10/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import Foundation
import ObjectMapper

public class Progress: Mappable {
    
    open var partsTotal: UInt?
    open var partsProcessed: UInt?
    open var timeLeftMs: UInt?
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        partsTotal <- map["partsTotal"]
        partsProcessed <- map["partsProcessed"]
        timeLeftMs <- map["timeLeftMs"]
    }
}
