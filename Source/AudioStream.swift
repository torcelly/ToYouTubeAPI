//
//  AudioStream.swift
//  ToYouTube
//
//  Created by Fernando Torcelly on 11/10/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import Foundation
import ObjectMapper

public class AudioStream: Mappable {
    
    open var channelCount : UInt?
    open var codec : String?
    open var bitrateBps : UInt?
    open var vendor : String?
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        channelCount <- map["channelCount"]
        codec <- map["codec"]
        bitrateBps <- map["bitrateBps"]
        vendor <- map["vendor"]
    }
}
