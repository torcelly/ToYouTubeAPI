//
//  Status.swift
//  ToYouTube
//
//  Created by Fernando Torcelly on 11/10/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import Foundation
import ObjectMapper

public class Status: Mappable {
    
    open var uploadStatus : String?
    open var failureReason : String?
    open var rejectionReason: String?
    open var privacyStatus: String?
    open var license : String?
    open var embeddable : Bool?
    open var publicStatsViewable : Bool?
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        uploadStatus <- map["uploadStatus"]
        failureReason <- map["failureReason"]
        rejectionReason <- map["rejectionReason"]
        privacyStatus <- map["privacyStatus"]
        license <- map["license"]
        embeddable <- map["embeddable"]
        publicStatsViewable <- map["publicStatsViewable"]
    }
}
