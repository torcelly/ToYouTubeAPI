//
//  VideoStream.swift
//  ToYouTube
//
//  Created by Fernando Torcelly on 11/10/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import Foundation
import ObjectMapper

public class VideoStream: Mappable {
    
    open var widthPixels : UInt?
    open var heightPixels : UInt?
    open var frameRateFps : Double?
    open var aspectRatio : Double?
    open var codec : String?
    open var bitrateBps : UInt?
    open var rotation : String?
    open var vendor : String?
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        widthPixels <- map["widthPixels"]
        heightPixels <- map["heightPixels"]
        frameRateFps <- map["frameRateFps"]
        aspectRatio <- map["aspectRatio"]
        codec <- map["videoStreams"]
        bitrateBps <- map["bitrateBps"]
        rotation <- map["rotation"]
        vendor <- map["vendor"]
    }
}
