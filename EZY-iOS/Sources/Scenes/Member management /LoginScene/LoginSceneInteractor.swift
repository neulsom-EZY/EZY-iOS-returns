//
//  LoginSceneInteractor.swift
//  EZY-iOS
//

import Foundation
import RxSwift
import RxRelay

typealias LoginSceneInteractorInput = LoginSceneViewControllerOutput

protocol LoginSceneInteractorOutput : AnyObject {
    func showLoginSuccess()
}

final class LoginSceneInteractor {
    var presenter: LoginScenePresenterInput?
    var worker : LoginSceneLogic?
}

// swiftlint:disable colon
extension LoginSceneInteractor:
    LoginSceneInteractorInput {
    
    var nickNameTextRelay: BehaviorRelay<String> {
        return.init(value: "")
    }
    
    var pwTextRelay: BehaviorRelay<String> {
        return .init(value: "")
    }
    
    func isValid() -> Observable<Bool> {
        return Observable.combineLatest(nickNameTextRelay, pwTextRelay).map { userName , password in
            return userName.count > 0 && userName.contains("@") && userName.contains(".") && password.count > 0
        }
    }
    func tryToLogin() {
        self.presenter?.showLoginSuccess()
    }

}
