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
    private var sceneFactory : LoginSceneFactory
    
    init(sceneFactory : LoginSceneFactory){
        self.sceneFactory = sceneFactory
    }
    
    @discardableResult
    func configured(
        _ viewController: LoginSceneViewController
    ) -> LoginSceneViewController {
        sceneFactory.configurator = self
        let interactor = LoginSceneInteractor()
        let presenter = LoginScenePresenter()
        let router = LoginSceneRouter(sceneFactory: sceneFactory)
        router.source = viewController
        presenter.viewController = viewController
        interactor.presenter = presenter
        viewController.interactor = interactor
        viewController.router = router
        return viewController
    }
}
