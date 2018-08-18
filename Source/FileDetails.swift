//
//  FileDetails.swift
//  ToYouTube
//
//  Created by Fernando Torcelly on 11/10/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import Foundation
import ObjectMapper

public class FileDetails: Mappable {
    
    open var fileName : String?
    open var fileSize : UInt?
    open var fileType : String?
    open var container : String?
    open var videoStreams : [VideoStream]?
    open var audioStreams : [AudioStream]?
    open var durationMs : UInt?
    open var bitrateBps : UInt?
    open var recordingLocation : Location?
    open var creationTime : String?
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        fileName <- map["fileName"]
        fileSize <- map["fileSize"]
        fileType <- map["fileType"]
        container <- map["container"]
        videoStreams <- map["videoStreams"]
        audioStreams <- map["audioStreams"]
        durationMs <- map["durationMs"]
        bitrateBps <- map["bitrateBps"]
        recordingLocation <- map["recordingLocation"]
        creationTime <- map["creationTime"]
    }
}
