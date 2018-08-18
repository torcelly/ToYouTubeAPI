//
//  RecordingDetails.swift
//  ToYouTube
//
//  Created by Fernando Torcelly on 11/10/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import Foundation
import ObjectMapper

public class RecordingDetails: Mappable {
    
    open var locationDescription : String?
    open var location : Location?
    open var recordingDate : Date?
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        locationDescription <- map["locationDescription"]
        location <- map["location"]
        recordingDate <- map["recordingDate"]
    }
}
