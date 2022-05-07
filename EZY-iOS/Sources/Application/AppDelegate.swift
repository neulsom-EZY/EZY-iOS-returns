//
//  AppDelegate.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/03.
//

import UIKit
import Swinject
import RIBs
import IQKeyboardManagerSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    static let container = Container()
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        let window  = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        
        
        AppDelegate.container.registerDependencies()
        
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.enableAutoToolbar = true
        IQKeyboardManager.shared.shouldResignOnTouchOutside = true
        return true
    }
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return .portrait
    }

}
