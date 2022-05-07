//
//  RootRouter.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/07.
//

import RIBs

protocol RootInteractable: Interactable, LoginListener {
    var router: RootRouting? { get set }
    var listener: RootListener? { get set }
}

protocol RootViewControllable: ViewControllable {}

final class RootRouter: LaunchRouter<RootInteractable, RootViewControllable>, RootRouting {

    private var loginBuilder : LoginBuildable
    private var loginRouter : LoginRouting?
    
    init(
        loginBuilder : LoginBuildable,
        interactor: RootInteractable,
        viewController: RootViewControllable
    ) {
        self.loginBuilder = loginBuilder
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }

    func cleanupViews() {
        detachLoginRIB()
    }
}


extension RootRouter{
    func attachLoginRIB(){
        guard self.loginRouter == nil else { return }
        let router = self.loginBuilder.build(
            with: LoginBuildDependency(
                listener: interactor
            )
        )
        self.loginRouter = router
        attachChild(router)
    }
    private func detachLoginRIB(){
        guard let router = loginRouter else {return}
        self.loginRouter = nil
        detachChild(router)
    }
}
