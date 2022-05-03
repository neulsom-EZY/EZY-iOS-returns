//
//  LoginSceneRouter.swift
//  EZY-iOS
//

import UIKit

protocol LoginSceneRoutingLogic {}

final class LoginSceneRouter: NSObject {
    weak var source: UIViewController?
}

// swiftlint:disable colon
extension LoginSceneRouter:
    LoginSceneRoutingLogic {}
