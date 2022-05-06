//
//  NickNameSettingSceneConfigurator.swift
//  EZY-iOS
//

import Foundation

protocol NickNameSettingSceneConfigurator {
    func configured(
        _ viewController: NickNameSettingSceneViewController
    ) -> NickNameSettingSceneViewController
}

// swiftlint:disable colon
final class DefaultNickNameSettingSceneConfigurator:
    NickNameSettingSceneConfigurator {
    func configured(
        _ viewController: NickNameSettingSceneViewController
    ) -> NickNameSettingSceneViewController {
        let interactor = NickNameSettingSceneInteractor()
        let presenter = NickNameSettingScenePresenter()
        let router = NickNameSettingSceneRouter()
        router.source = viewController
        presenter.viewController = viewController
        interactor.presenter = presenter
        viewController.interactor = interactor
        viewController.router = router
        return viewController
    }
}
