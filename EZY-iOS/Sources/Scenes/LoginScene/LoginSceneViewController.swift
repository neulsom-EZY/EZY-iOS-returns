//
//  LoginSceneViewController.swift
//  EZY-iOS
//

import UIKit
import os.log

import Base

protocol LoginSceneViewControllerInput: AnyObject {}

typealias LoginSceneViewControllerOutput
    = LoginSceneInteractorInput

final class LoginSceneViewController: BaseViewController {
    var interactor: LoginSceneViewControllerOutput?
    var router: LoginSceneRoutingLogic?
    
    private lazy var logger = Logger(subsystem: String(describing: self), category: "UI")
    

}

// swiftlint:disable colon
extension LoginSceneViewController:
    LoginSceneViewControllerInput {}
