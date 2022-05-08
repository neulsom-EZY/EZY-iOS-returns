//
//  LoginBuilder.swift
//  EZY-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/07.
//

import NeedleFoundation
import RIBs
import RIBsUtil

protocol LoginDependency: NeedleFoundation.Dependency {
    var loginViewController : RootViewControllable & LoginPresentable & LoginViewControllable {get}
}

//MARK: - LoginBuildDependency
struct LoginBuildDependency{
    let listener : LoginListener
}

final class LoginComponent: NeedleFoundation.Component<LoginDependency> {
    
}

// MARK: - LoginBuildable
protocol LoginBuildable: Buildable {
    func build(with dynamicBuildDependency: LoginBuildDependency) -> LoginRouting
}

// MARK: - LoginBuilder

final class LoginBuilder:
    ComponentizedBuilder<LoginComponent, LoginRouting , LoginBuildDependency, Void>,
    LoginBuildable
{
    override func build(
        with component: LoginComponent,
        _ payload: LoginBuildDependency
    ) -> LoginRouting {
        let viewController = LoginViewController()
        let interactor = LoginInteractor(presenter: viewController)
        interactor.listener = payload.listener
        
        return LoginRouter(
            interactor: interactor,
            viewController: viewController
        )
    }
}
