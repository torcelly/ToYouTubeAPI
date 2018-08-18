//
//  Snippet.swift
//  ToYouTube
//
//  Created by Fernando Torcelly on 11/10/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import Foundation
import ObjectMapper

public class Snippet: Mappable {
    
    open var publishedAt : String?
    open var channelId : String?
    open var title: String?
    open var description: String?
    open var thumbnails : [String : Thumbnail]?
    open var channelTitle : String?
    open var tags : [String]?
    open var categoryId : String?
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        publishedAt <- map["publishedAt"]
        channelId <- map["channelId"]
        title <- map["title"]
        description <- map["description"]
        thumbnails <- map["thumbnails"]
        channelTitle <- map["channelTitle"]
        tags <- map["tags"]
        categoryId <- map["categoryId"]
    }
}
