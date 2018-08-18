//
//  TopicDetails.swift
//  ToYouTube
//
//  Created by Fernando Torcelly on 11/10/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import Foundation
import ObjectMapper

public class TopicDetails: Mappable {
    
    open var topicIds : [String]?
    open var relevantTopicIds : [String]?
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        topicIds <- map["topicIds"]
        relevantTopicIds <- map["relevantTopicIds"]
    }
}
