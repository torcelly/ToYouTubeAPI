//
//  ProcessingDetails.swift
//  ToYouTube
//
//  Created by Fernando Torcelly on 11/10/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import Foundation
import ObjectMapper

public class ProcessingDetails: Mappable {
    
    open var processingStatus: String?
    open var processingProgress: Progress?
    open var processingFailureReason: String?
    open var fileDetailsAvailability: String?
    open var processingIssuesAvailability: String?
    open var tagSuggestionsAvailability: String?
    open var editorSuggestionsAvailability: String?
    open var thumbnailsAvailability: String?
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        processingStatus <- map["processingStatus"]
        processingProgress <- map["processingProgress"]
        processingFailureReason <- map["processingFailureReason"]
        fileDetailsAvailability <- map["fileDetailsAvailability"]
        processingIssuesAvailability <- map["processingIssuesAvailability"]
        tagSuggestionsAvailability <- map["tagSuggestionsAvailability"]
        editorSuggestionsAvailability <- map["editorSuggestionsAvailability"]
        thumbnailsAvailability <- map["thumbnailsAvailability"]
    }
}
