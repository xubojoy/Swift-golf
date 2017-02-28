//
//  AppStatus.swift
//  Swift-golf
//
//  Created by xubojoy on 15/8/24.
//  Copyright (c) 2015年 xubojoy. All rights reserved.
//

import UIKit

class AppStatus: NSObject,NSCoding{
    private static var __once: () = {
            var instance = AppStatus()
        }()
    var user:User!
    var deviceToken:String?
    
    class var sharedInstance : AppStatus {
        struct Static {
            static var onceToken : Int = 0
            static var instance : AppStatus? = nil
        }
        _ = AppStatus.__once
        return Static.instance!
    }
    
    func logined() -> Bool{
    
        if self.user != nil && self.user.accessToken != nil{
            return true;
        }
        return false;
    }
    
    override init()
    {
        
    }
    
    required init?(coder aDecoder: NSCoder){
        
        super.init()
        self.user = aDecoder.decodeObject(forKey: "user") as? User
        self.deviceToken = aDecoder.decodeObject(forKey: "deviceToken") as? String
        
    }
    
    func encode(with aCoder: NSCoder)
    {
        aCoder.encode(self.user, forKey: "user")
        aCoder.encode(self.deviceToken, forKey: "deviceToken")
    }
    
    func saveAppStatus(){
        NSLog("AppStatus to be saving:----\(AppStatus.sharedInstance.description)");
        NSKeyedArchiver.archiveRootObject(AppStatus.sharedInstance, toFile:AppStatus.savedPath(self)())
    }
    
    func savedPath() -> String{
        var documentDirectories = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        var documentDirectory = documentDirectories[0] 
        documentDirectory = (documentDirectory as NSString).appendingPathComponent("appStatus.archive")
        return documentDirectory
    }
    
    

}


// MARK:- 向外提供的方法
extension AppStatus {
    
    func ua() -> String{
        let ua = NSMutableString()
        ua.appendFormat("ios")
//        ua.appendFormat(";\(UIDevice.current.model),\(screen_width)*\(screen_height)" as NSString)
        
//        let dicInfo = Bundle.main.infoDictionary as NSDictionary!
//        let cFBundleName = dicInfo?.object(forKey: "cFBundleName") as? String
//        let cFBundleShortVersionString = dicInfo?.object(forKey: "CFBundleShortVersionString") as? String
//        ua.appendFormat(";\(cFBundleName),\(cFBundleShortVersionString)" as NSString)
//        ua.appendFormat(";\(UIDevice.current.identifierForVendor!.uuidString)" as NSString)
//        self.deviceToken = (self.deviceToken == nil) ?"unknow":self.deviceToken
//        
//        ua.appendFormat(";\(self.deviceToken)" as NSString)
//
//        print(ua)
        return ua as String
    }

}
