//
//  ContentRating.swift
//  ToYouTube
//
//  Created by Fernando Torcelly on 11/10/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import Foundation
import ObjectMapper

public class ContentRating: Mappable {
    
    open var mpaaRating : String?
    open var tvpgRating : String?
    open var bbfcRating: String?
    open var chvrsRating: String?
    open var eirinRating : String?
    open var cbfcRating : String?
    open var fmocRating : String?
    open var icaaRating : String?
    open var acbRating : String?
    open var oflcRating : String?
    open var fskRating : String?
    open var kmrbRating : String?
    open var djctqRating : String?
    open var russiaRating : String?
    open var rtcRating : String?
    open var ytRating : String?
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        mpaaRating <- map["mpaaRating"]
        tvpgRating <- map["tvpgRating"]
        bbfcRating <- map["bbfcRating"]
        chvrsRating <- map["chvrsRating"]
        eirinRating <- map["eirinRating"]
        cbfcRating <- map["cbfcRating"]
        fmocRating <- map["fmocRating"]
        icaaRating <- map["icaaRating"]
        acbRating <- map["acbRating"]
        oflcRating <- map["oflcRating"]
        fskRating <- map["fskRating"]
        kmrbRating <- map["kmrbRating"]
        djctqRating <- map["djctqRating"]
        russiaRating <- map["russiaRating"]
        rtcRating <- map["rtcRating"]
        ytRating <- map["ytRating"]
    }
}
