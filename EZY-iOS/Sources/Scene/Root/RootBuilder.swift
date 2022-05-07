//
//  RootBuilder.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/07.
//

import NeedleFoundation
import RIBs

protocol RootDependency: NeedleFoundation.Dependency {}

final class RootComponent: NeedleFoundation.Component<RootDependency> {
    
    var loginViewController : RootViewControllable & LoginPresentable & LoginViewControllable{
        shared { LoginViewController() }
    }
    
    var loginBuilder : LoginBuildable{
        LoginBuilder {
            LoginComponent(parent: self)
        }
    }
}

// MARK: - RootBuilder

protocol RootBuildable: Buildable {
    func build() -> LaunchRouting
}

//MARK: - RootBuilder

final class RootBuilder: SimpleComponentizedBuilder<RootComponent, LaunchRouting>, RootBuildable {

    override func build(with component: RootComponent) -> LaunchRouting {
        let interactor = RootInteractor()
        
        return RootRouter(
            loginBuilder: component.loginBuilder,
            interactor: interactor,
            viewController: component.loginViewController
        )
    }
}
