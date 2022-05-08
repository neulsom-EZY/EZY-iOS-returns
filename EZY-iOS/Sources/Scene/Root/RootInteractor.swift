//
//  RootInteractor.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/08.
//

import RIBs
import RxSwift

protocol RootRouting: Routing {
    func cleanupViews()
    func attachLoginRIB()
}

protocol RootListener: AnyObject {}

final class RootInteractor: Interactor, RootInteractable {

    weak var router: RootRouting?
    weak var listener: RootListener?

    override func didBecomeActive() {
        super.didBecomeActive()
        router?.attachLoginRIB()
    }

    override func willResignActive() {
        super.willResignActive()
        router?.cleanupViews()
    }
}
