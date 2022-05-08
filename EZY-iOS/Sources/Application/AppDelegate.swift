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
import os.log

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    static let container = Container()
    
    private lazy var logger = Logger(subsystem: String(describing: self), category: "App")
    
    var window: UIWindow?
    
    private var launchRouter : LaunchRouting?
    private var reachability : Reachability?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        AppDelegate.container.registerDependencies()
        registerProviderFactories()
        setReachability()

        setWindow()
        setLaunchRouter()
        setIQKeyboardManager()
        
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
        self.launchRouter = appComponent.rootBuilder.build()
        self.launchRouter?.launch(from: window)
    }
    private func setReachability(){
        do{
            self.reachability = try Reachability()
            try self.reachability?.startNotifier()
        } catch{
            logger.error("Internet Error: \(error.localizedDescription)")
        }
    }
    
    private func setIQKeyboardManager(){
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.enableAutoToolbar = true
        IQKeyboardManager.shared.shouldResignOnTouchOutside = true
    }
}
