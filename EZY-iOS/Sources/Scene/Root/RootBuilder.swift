//
//  RootBuilder.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/08.
//
import NeedleFoundation
import RIBs

// MARK: - Builder

protocol RootBuildable: Buildable {
    func build() -> LaunchRouting
}

final class RootBuilder: SimpleComponentizedBuilder<RootComponent,LaunchRouting>, RootBuildable {

    override func build() -> LaunchRouting {
        
    }
    override func build(with component: RootComponent) -> LaunchRouting {
        let loginBuilder = LoginBuilder { login in
                    component.loginComponent
                }
                let router = RootRouter(interactor: component.interactor,
                                        viewController: component.rootViewController,
                                        configurationBuilder: loginBuilder)

                return router
    }
}
