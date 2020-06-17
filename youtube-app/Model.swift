//
//  Model.swift
//  youtube-app
//
//  Created by 赤堀雅司 on 8/6/20.
//  Copyright © 2020 赤堀雅司. All rights reserved.
//

import Foundation

class Model {
  func getVideos() {
    //create a url object
    let url = URL(string: Constants.API_URL)
      
    
    guard url != nil else {
      return
    }
    //get a url sesstion object
    let session = URLSession.shared
    
    //get a data task from the urlsession object
    let dataTask = session.dataTask(with: url!) { (data, response, error) in
      if error != nil || data == nil {
        return
      }
      
      do {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        
        let response = try decoder.decode(Response.self, from: data!)
        
        dump(response)
        
        
      } catch {
        
      }
    }
    //kick off the task
    dataTask.resume()
  }
}
