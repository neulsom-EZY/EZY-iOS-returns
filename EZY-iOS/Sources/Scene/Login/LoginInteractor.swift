//
//  LoginInteractor.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/07.
//

import RIBs
import RxSwift
import ReactorKit

protocol LoginRouting: ViewableRouting {}

protocol LoginPresentable: Presentable {
    var listener: LoginPresentableListener? { get set }
}

protocol LoginListener: AnyObject {}

final class LoginInteractor:
    PresentableInteractor<LoginPresentable>,
    LoginInteractable,
    LoginPresentableListener
{
    
    weak var router: LoginRouting?
    weak var listener: LoginListener?
    
    // TODO: Add additional dependencies to constructor. Do not perform any logic
    // in constructor.
    override init(presenter: LoginPresentable) {
        super.init(presenter: presenter)
        presenter.listener = self
    }
    
    override func didBecomeActive() {
        super.didBecomeActive()
        // TODO: Implement business logic here.
    }
    
    override func willResignActive() {
        super.willResignActive()
        // TODO: Pause any business logic.
    }
}
