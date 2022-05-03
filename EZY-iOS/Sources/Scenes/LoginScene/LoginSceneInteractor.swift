//
//  LoginSceneInteractor.swift
//  EZY-iOS
//

import Foundation

protocol LoginSceneInteractorInput {}

typealias LoginSceneInteractorOutput
    = LoginSceneInteractorInput

final class LoginSceneInteractor {
    var presenter: LoginScenePresenterInput?
    var worker : LoginSceneLogic?
}

// swiftlint:disable colon
extension LoginSceneInteractor:
    LoginSceneInteractorInput {}
