//
//  VideoListReponse.swift
//  ToYouTube
//
//  Created by Fernando Torcelly on 11/10/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import Foundation
import ObjectMapper

public class VideoListResponse: Mappable {
    
    open var kind : String?
    open var etag : String?
    open var nextPageToken: String?
    open var prevPageToken: String?
    open var pageInfo: PageInfo?
    open var items: [VideoObject]?
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        kind <- map["kind"]
        etag <- map["etag"]
        nextPageToken <- map["nextPageToken"]
        prevPageToken <- map["prevPageToken"]
        pageInfo <- map["pageInfo"]
        items <- map["items"]
    }
}
