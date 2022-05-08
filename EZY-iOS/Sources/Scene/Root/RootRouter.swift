//
//  RootRouter.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/08.
//

import RIBs

protocol RootInteractable: Interactable , LoginListener{
    var router: RootRouting? { get set }
    var listener: RootListener? { get set }
}

protocol RootViewControllable: ViewControllable {
    func setViewController(viewController : ViewControllable)
}

final class RootRouter: LaunchRouter<RootInteractable, RootViewControllable>, RootRouting {

    
    
    init(
        interactor : RootInteractable,
        viewController : RootViewControllable,
        loginBuilder : LoginBuilder
    ){
        self.loginBuilder = loginBuilder
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
    
    override func didLoad() {
        super.didLoad()
        routerToLogin()
    }
    
    //MARK: - Private
    
    private let loginBuilder : LoginBuilder
    
    func routerToLogin() {
        
    }
}
