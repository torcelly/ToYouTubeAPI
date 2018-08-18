//
//  ToYouTube.swift
//  ToYouTube
//
//  Created by Fernando Torcelly on 11/10/17.
//  Copyright © 2017 Fernando Torcelly. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

public struct YouTubeSearchConstant {
    public static let baseURLVideos = "https://www.googleapis.com/youtube/v3"
}

public class ToYouTube {
    
    open static let shared = ToYouTube()
    private init() {}
    open  var apiKey: String?
    
    // MARK: - Search
    
    public func search(query: String, maxResults: Int = 20, completionHandler: @escaping (VideoListResponse?, Error?) -> ()) {
        
        let path = String.init(format: "%@/search?part=snippet&q=%@&key=%@", YouTubeSearchConstant.baseURLVideos, query, apiKey!)
        
        Alamofire.request(path, method: .get, parameters: nil, encoding: JSONEncoding.default).responseObject { (
            response: DataResponse<VideoListResponse>) in
            print(String.init(data: response.data!, encoding: .utf8) ?? "")
            switch response.result {
            case .success(_):
                if let value = response.result.value {
                    completionHandler(value, nil)
                }
                else {
                    let unknownError = NSError.init(domain: "Unknown Error", code: 700, userInfo: nil)
                    completionHandler(nil, unknownError)
                }
            case .failure(let error):
                completionHandler(nil, error as NSError?)
            }
        }
    }
    
    // MARK: - List
    
    public func list(videoId: String, maxResults: Int = 20, completionHandler: @escaping (VideoListResponse?, Error?) -> ()) {
        
        let path = String.init(format: "%@/videos?part=id,contentDetails&id=%@&maxResults=%i&key=%@", YouTubeSearchConstant.baseURLVideos, videoId, maxResults, apiKey!)
        
        Alamofire.request(path, method: .get, parameters: nil, encoding: JSONEncoding.default).responseObject { (
            response: DataResponse<VideoListResponse>) in
            print(String.init(data: response.data!, encoding: .utf8) ?? "")
            switch response.result {
            case .success(_):
                if let value = response.result.value {
                    completionHandler(value, nil)
                }
                else {
                    let unknownError = NSError.init(domain: "Unknown Error", code: 700, userInfo: nil)
                    completionHandler(nil, unknownError)
                }
            case .failure(let error):
                completionHandler(nil, error as NSError?)
            }
        }
    }
}
