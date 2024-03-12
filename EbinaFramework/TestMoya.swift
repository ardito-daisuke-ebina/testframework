//
//  TestMoya.swift
//  EbinaFramework
//
//  Created by ebina on 2024/03/08.
//

import Foundation
import Alamofire
 class TestMoya {
     func test() -> String {
         getArticles()
        return "afsjdalkjfldkasjklfja"
    }
     
     func getArticles(){
         AF.request("https://appdev-room.com/api/article").response { response in
                 do {
                     let articles = try JSONSerialization.jsonObject(with: response.data!, options: []) as? Array<Any>
                     print(articles)
                 } catch {
                     print(error.localizedDescription)
                 }
             }
         
     }
}
