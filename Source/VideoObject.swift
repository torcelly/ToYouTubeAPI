//
//  VideoObject.swift
//  ToYouTube
//
//  Created by Fernando Torcelly on 11/10/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import Foundation
import ObjectMapper

public class VideoObject: Mappable {
    
    open var kind : String?
    open var etag : String?
    open var id: String?
    open var snippet: Snippet?
    open var contentDetails : Details?
    open var status : Status?
    open var statistics : Statistics?
    open var player : Player?
    open var topicDetails : TopicDetails?
    open var recordingDetails: RecordingDetails?
    open var fileDetails: FileDetails?
    open var processingDetails: ProcessingDetails?
    open var suggestions: Suggestions?
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        kind <- map["kind"]
        etag <- map["etag"]
        id <- map["id.videoId"]
        snippet <- map["snippet"]
        contentDetails <- map["contentDetails"]
        status <- map["status"]
        statistics <- map["statistics"]
        player <- map["player"]
        topicDetails <- map["topicDetails"]
        recordingDetails <- map["recordingDetails"]
        fileDetails <- map["fileDetails"]
        processingDetails <- map["processingDetails"]
        suggestions <- map["suggestions"]
    }
}
