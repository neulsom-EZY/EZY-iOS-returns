//
//  LoginSceneConfigurator.swift
//  EZY-iOS
//

import Foundation

protocol LoginSceneConfigurator {
    func configured(
        _ viewController: LoginSceneViewController
    ) -> LoginSceneViewController
}

// swiftlint:disable colon
final class DefaultLoginSceneConfigurator:
    LoginSceneConfigurator {
    func configured(
        _ viewController: LoginSceneViewController
    ) -> LoginSceneViewController {
        let interactor = LoginSceneInteractor()
        let presenter = LoginScenePresenter()
        let router = LoginSceneRouter()
        router.source = viewController
        presenter.viewController = viewController
        interactor.presenter = presenter
        viewController.interactor = interactor
        viewController.router = router
        return viewController
    }
}
