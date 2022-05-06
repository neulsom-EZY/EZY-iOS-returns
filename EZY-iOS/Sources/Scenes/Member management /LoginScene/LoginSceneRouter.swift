//
//  LoginSceneRouter.swift
//  EZY-iOS
//

import UIKit

protocol LoginSceneRoutingLogic {
    func showLoginSuccess()
    func doNotHaveAcount()
}

final class LoginSceneRouter: NSObject {
    weak var source: UIViewController?
    
    private let sceneFactory : LoginSceneFactory
    
    init(sceneFactory : LoginSceneFactory){
        self.sceneFactory = sceneFactory
    }
}

// swiftlint:disable colon
extension LoginSceneRouter:
    LoginSceneRoutingLogic {
    func doNotHaveAcount() {
        let scene = sceneFactory.doNotHaveAcount()
        source?.navigationController?.pushViewController(scene, animated: true)
    }
    
    func showLoginSuccess() {
        
    }
}
