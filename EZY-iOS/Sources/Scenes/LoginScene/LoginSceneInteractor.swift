//
//  LoginSceneInteractor.swift
//  EZY-iOS
//

import Foundation

typealias LoginSceneInteractorInput = LoginSceneViewControllerOutput

protocol LoginSceneInteractorOutput : AnyObject {
    
}

final class LoginSceneInteractor {
    var presenter: LoginScenePresenterInput?
    var worker : LoginSceneLogic?
}

// swiftlint:disable colon
extension LoginSceneInteractor:
    LoginSceneInteractorInput {}
