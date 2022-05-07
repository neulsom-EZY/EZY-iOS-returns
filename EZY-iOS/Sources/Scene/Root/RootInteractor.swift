//
//  RootInteractor.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/07.
//

import RIBs
import RxSwift

protocol RootRouting: Routing {
    func attachLoginRIB()
    func cleanupViews()
}

protocol RootListener: AnyObject {}

final class RootInteractor: Interactor, RootInteractable {

    weak var router: RootRouting?
    weak var listener: RootListener?

    override func didBecomeActive() {
        super.didBecomeActive()
        self.router?.attachLoginRIB()
    }

    override func willResignActive() {
        super.willResignActive()
        self.router?.cleanupViews()
    }
}
