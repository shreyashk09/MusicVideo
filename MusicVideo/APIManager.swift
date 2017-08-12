//
//  APIManager.swift
//  MusicVideo
//
//  Created by Shreyash Kawalkar on 12/08/17.
//  Copyright © 2017 Sk. All rights reserved.
//

import Foundation

class APIManager{
    func loadData(urlString:String, completion:@escaping ((String)) -> Void){
        let session=URLSession.shared
        let url=URL(string:urlString)!
        let task=session.dataTask(with:url){
        (data,response,error) ->Void in
            DispatchQueue.main.async {
            if error != nil{
                completion(("error"))}
            else{
                completion(("successfull"))
                print(data!)
                }
            }
        }
        task.resume()
    }
}
