//
//  AppDelegate.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/03.
//

import UIKit
import Swinject
import RIBs
import Reachability
import IQKeyboardManagerSwift


@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    static let container = Container()
    
    var window: UIWindow?
    
    private var launchRouter : LaunchRouting?
    private var reachability : Reachability?
    
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

//MARK: - Private Method

extension AppDelegate{
    private func setWindow(){
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
    }
    private func setLaunchRouter() {
        guard let window = self.window else {return}
        let appComponent = AppComponent()
        self.launchRouter = appComponent.
    }
}
