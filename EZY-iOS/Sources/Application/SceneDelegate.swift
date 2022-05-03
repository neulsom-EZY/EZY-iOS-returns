//
//  SceneDelegate.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/03.
//

import UIKit
import RxSwift
import Inject

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        coordinatorToAppFlow(with: windowScene)
    }
    
    private func coordinatorToAppFlow(with scene : UIWindowScene){
        let window = UIWindow(windowScene: scene)
        self.window = window
        let navController = UINavigationController(rootViewController: LoginSceneViewController())
        //MARK: - Inject
        window.rootViewController = Inject.ViewControllerHost(navController)
        window.makeKeyAndVisible()
    }
}

