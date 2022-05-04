//
//  LoginScenePresenter.swift
//  EZY-iOS
//

import UIKit

typealias LoginScenePresenterInput = LoginSceneInteractorOutput
typealias LoginScenePresenterOutput = LoginSceneViewControllerInput

final class LoginScenePresenter {
    weak var viewController: LoginScenePresenterOutput?
}

// swiftlint:disable colon
extension LoginScenePresenter:
    LoginScenePresenterInput {}
