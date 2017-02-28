//
//  UserStore.swift
//  Swift-golf
//
//  Created by xubojoy on 15/8/24.
//  Copyright (c) 2015年 xubojoy. All rights reserved.
//

import UIKit

class UserStore: NSObject {
    private static var __once: () = {
            var instance = UserStore()
        }()
    class var sharedInstance : UserStore {
        struct Static {
            static var onceToken : Int = 0
            static var instance : UserStore? = nil
        }
        _ = UserStore.__once
        return Static.instance!
    }
    
    
    func userLogin(_ pwd:String!,mobileNo:NSString! ,completionBlock:(_ user:User, _ err:NSError?) -> Void){
        
//        let parameters:Dictionary? = ["pwd":pwd,"name":mobileNo]

        
//        HttpRequestFacade.sharedInstance.httpSendPostParametersRequest("http://test.golfd.cn/api/userSessions", parameters: parameters) { (json, err) -> Void in
//            print(json)
////            var dict = json as! NSDictionary
//    
////            completionBlock(dict: dict, err: nil)
//        }
    }
    
//    func createNewUserWithCompletion(gender:Int!, name:String!,mobileNo:String! ,completionBlock:(user:User, err:NSError?) -> Void){
//        var parameters = [
//            "name":name,
//            "mobileNo":mobileNo,
//            "gender":String(format: "\(gender)")
//        ]
//        println(parameters)
//        HttpRequestFacade.sharedInstance.httpSendPostParametersRequest("http://test.golfd.cn/api/customers", parameters: parameters) { (json, err) -> Void in
//            println(json)
////            var dict = json as! NSDictionary
//            //completionBlock(dict: dict, err: nil)
//        }
//    }
    
}
