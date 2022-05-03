//
//  LoginSceneViewController.swift
//  EZY-iOS
//

import UIKit
import os.log
import Base
import RxSwift

protocol LoginSceneViewControllerInput: AnyObject {}

typealias LoginSceneViewControllerOutput
    = LoginSceneInteractorInput

final class LoginSceneViewController: BaseViewController {
    var interactor: LoginSceneViewControllerOutput?
    var router: LoginSceneRoutingLogic?
    
    private lazy var logger = Logger(subsystem: String(describing: self), category: "UI")
    
    //MARK: - Configure
    override func configureUI() {
        
    }
    //MARK: - AddView
    override func addView() {
        
    }
    //MARK: - SetLayout
    override func setLayout() {
        
    }
}


// swiftlint:disable colon
extension LoginSceneViewController:
    LoginSceneViewControllerInput {
    
}
