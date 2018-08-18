//
//  Suggestions.swift
//  ToYouTube
//
//  Created by Fernando Torcelly on 11/10/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import Foundation
import ObjectMapper

public class Suggestions: Mappable {
    
    open var processingErrors: [String]?
    open var processingWarnings: [String]?
    open var processingHints: [String]?
    open var tagSuggestions: [Tag]?
    open var editorSuggestions: [String]?
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        processingErrors <- map["processingErrors"]
        processingWarnings <- map["processingWarnings"]
        processingHints <- map["processingHints"]
        tagSuggestions <- map["tagSuggestions"]
        editorSuggestions <- map["editorSuggestions"]
    }
}
