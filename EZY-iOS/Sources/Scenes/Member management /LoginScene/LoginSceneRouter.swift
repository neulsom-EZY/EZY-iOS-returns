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
}

// swiftlint:disable colon
extension LoginSceneRouter:
    LoginSceneRoutingLogic {
    func doNotHaveAcount() {
        let scene = NickNameSettingSceneViewController()
        source?.navigationController?.pushViewController(scene, animated: true)
    }
    
    func showLoginSuccess() {
        
    }
}
